import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ican/constant.dart';
import 'package:ican/models/connect_model.dart';

class ConnectWid extends StatefulWidget {
  const ConnectWid({super.key});

  @override
  State<ConnectWid> createState() => _ConnectWidState();
}

class _ConnectWidState extends State<ConnectWid> {
  double scwid1 = 0;
  int x = 0;

  bool startanimation = false;
  bool startanimation2 = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startanimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    scwid1 = MediaQuery.of(context).size.width;
    var data = '''اهلا وسهلا بكم
 نحن جاهزون دوما لرد على 
استفساراتكم خلال أوقات الدوام''';
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
            height: 170,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                      height: 140,
                      width: 140,
                      child: SvgPicture.asset(Assets.customer)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          data,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: MaterialButton(
                              onPressed: () {},
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Colors.white,
                              height: 35,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("اتصل الآن",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20)),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: SvgPicture.asset(
                                          Assets.call,
                                          // ignore: deprecated_member_use
                                          color: Colors.black,
                                        ))
                                  ]),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Wrap(
            alignment: WrapAlignment.start,
            children: List.generate(
                ConnectModel.c1.length,
                (index) => InkWell(
                      onTap: () {
                        setState(() {
                          x = index;
                          startanimation2 = true;
                        });
                      },
                      child: CardInfo(
                        d: scwid1,
                        f: startanimation,
                        index: index,
                      ),
                    )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CD2(
          index: x,
          d: scwid1,
          f: startanimation2,
        )
      ],
    ));
  }
}

class CD2 extends StatelessWidget {
  const CD2({
    super.key,
    required this.index,
    required this.d,
    required this.f,
  });
  final int index;
  final double d;

  final bool f;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(f ? 0 : d, 0, 0),
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: const BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                  height: 25,
                  width: 25,
                  child: SvgPicture.asset(
                    Assets.back3,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ConnectModel.c1[index],
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      ConnectModel.c2[index],
                      style: const TextStyle(color: Colors.black),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: SizedBox(
                height: 40,
                width: 40,
                child: SvgPicture.asset(
                  ConnectModel.icon1[index],
                  // ignore: deprecated_member_use
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo(
      {super.key, required this.index, required this.d, required this.f});
  final int index;
  final double d;

  final bool f;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 5),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000 + (index * 50)),
        curve: Curves.easeInQuad,
        transform: Matrix4.translationValues(f ? 0 : d, 0, 0),
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(15)),
        child: SvgPicture.asset(
          ConnectModel.icon1[index],
          // ignore: deprecated_member_use
          color: Colors.white,
        ),
      ),
    );
  }
}
