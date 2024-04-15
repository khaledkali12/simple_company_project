import 'package:flutter/material.dart';
import 'package:ican/models/nav_item_model.dart';
import 'package:ican/screens/conect/conect.dart';

import 'package:ican/screens/home/home.dart';
import 'package:ican/screens/notification/notification.dart';
import 'package:ican/screens/personal/personal.dart';
import 'package:ican/screens/sitting/appbar.dart';

import 'package:ican/screens/sitting/drawer.dart';
import 'package:rive/rive.dart';

// const Color buttoncolor = Color(0xFF17203A);
// const Color buttoncolor = Color.fromARGB(255, 255, 230, 0);
const Color buttoncolor = Color.fromARGB(255, 217, 197, 15);

class ButtonNavicationWid extends StatefulWidget {
  const ButtonNavicationWid({super.key});

  @override
  State<ButtonNavicationWid> createState() => _ButtonNavicationWidState();
}

class _ButtonNavicationWidState extends State<ButtonNavicationWid> {
  final GlobalKey<ScaffoldState> rkey = GlobalKey();
  List<SMIBool> riveIconInputs = [];
  List<StateMachineController?> controllers = [];
  List<String> pagesTitle = [
    "KAN",
    "تواصل معنا",
    "Timer",
    "الأخبار",
    "انضم إلينا"
  ];
  List<Widget> pages = [
    HomeWid(),
    const ConnectWid(),
    const ConnectWid(),
    const NotificationWid(),
    const PersonalWid()
  ];
  List<bool> state = [false, false, false, false, false];
  int selectedNavIndex = 0;
  void animateTheIcon(int index) {
    riveIconInputs[index].change(true);
    Future.delayed(
      const Duration(seconds: 1),
      () {
        riveIconInputs[index].change(false);
      },
    );
  }

  void riveOnIn(Artboard artboard, {required String stateMachineName}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);
    artboard.addController(controller!);
    controllers.add(controller);
    riveIconInputs.add(controller.findInput<bool>('active') as SMIBool);
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 138, 138, 136),
      // backgroundColor: Colors.white,
      // body: Center(child: Text(pages[selectedNavIndex])),
      // appBar:CustomAppBar(globalKey:widget.rkey,title: "iCAN",) ,
      // endDrawer:  SafeArea(
      //   child: SizedBox(
      //       width: MediaQuery.of(context).size.width / 2,
      //       child: DrawerEmployee(
      //         drawekey:widget.rkey,
      //       )),
      // ),
      // appBar: AppBar(backgroundColor: Colors.red),
      key: rkey,
      appBar: CustomAppBar(
        globalKey: rkey,
        title: pagesTitle[selectedNavIndex],
        back: state[selectedNavIndex],
        drawer: true,
      ),
      // drawer: SafeArea(child: Drawer()),
      endDrawer: SafeArea(
        child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: DrawerEmployee(
              drawekey: rkey,
            )),
      ),
      body: pages[selectedNavIndex],
      // bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: icon)]),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
          // height: 56,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: buttoncolor.withOpacity(0.8),
              boxShadow: [
                BoxShadow(
                    color: buttoncolor.withOpacity(0.3),
                    offset: const Offset(0, 20),
                    blurRadius: 20)
              ],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                bottomNavItems.length,
                (index) {
                  final riveIcon = bottomNavItems[index].rive;
                  return GestureDetector(
                    onTap: () {
                      animateTheIcon(index);
                      setState(() {
                        selectedNavIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedBar(isActive: selectedNavIndex == index),
                        SizedBox(
                          height: 36,
                          width: 36,
                          child: Opacity(
                            opacity: selectedNavIndex == index ? 1 : 0.5,
                            child: RiveAnimation.asset(
                              riveIcon.src,
                              artboard: riveIcon.arthboard,
                              onInit: (artboard) {
                                riveOnIn(artboard,
                                    stateMachineName:
                                        riveIcon.stateMachineName);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
        ),
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 20 : 0,
      decoration: const BoxDecoration(
          // color: Color(0xFF81B4FF),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
