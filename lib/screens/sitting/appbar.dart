import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ican/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
   const CustomAppBar({super.key, this.title = "", required this.globalKey,required this.back, required this.drawer});
  final GlobalKey<ScaffoldState> globalKey;
  final String title;
  final bool back;
   final bool drawer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
          // color: Color(0xFF17203A),
          color: Color.fromARGB(255, 252, 231, 45),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16))
              // borderRadius:  BorderRadius.all(Radius.circular(25))
              ),
      height: 55,
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child:
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
          back==false?const SizedBox(width: 50,):IconButton(
            onPressed: () {
             
              Navigator.of(context).pop();
              
            },
            icon: SvgPicture.asset(
              Assets.back,
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Text(textAlign: TextAlign.center,
              title,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          drawer==false?const SizedBox(width: 50,): IconButton(
            onPressed: () {
              globalKey.currentState?.openEndDrawer();
              
            },
            // ignore: deprecated_member_use
            icon: SvgPicture.asset(Assets.menu, color: Colors.white),
          ),
        ]),
      ),
    ));
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 95);
}
