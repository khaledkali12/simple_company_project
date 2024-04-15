import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ican/screens/home/controller.dart';
import 'package:ican/screens/section/card2.dart';

class SectionWid extends StatefulWidget {
  const SectionWid({super.key, required this.index});
  final int index;
  @override
  State<SectionWid> createState() => _SectionWidState();
}

class _SectionWidState extends State<SectionWid> {
  double scwid = 0;

  bool startanimation = false;
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
    scwid = MediaQuery.of(context).size.width;
    final HomePageController controller = HomePageController();

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Hero(
                  tag: "im1${widget.index}",
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image:
                                AssetImage(controller.section3[widget.index]),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    top: 160,
                    right: 20,
                    child: Hero(
                      tag: "im2${widget.index}",
                      child: SvgPicture.asset(
                        controller.section2[widget.index],
                        width: 70,
                        height: 70,
                      ),
                    ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                transform:
                    Matrix4.translationValues(startanimation ? 0 : scwid, 0, 0),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    controller.section1[widget.index],
                    style: const TextStyle(
                        fontSize: 25, fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
                controller.section4.length,
                (index) => CardWid2(
                      d: scwid,
                      f: startanimation,
                      index: index,
                    )),
          )
        ],
      ),
    );
  }
}
