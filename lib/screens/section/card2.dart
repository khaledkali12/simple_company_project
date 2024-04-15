import 'package:flutter/material.dart';
import 'package:ican/screens/home/controller.dart';

class CardWid2 extends StatelessWidget {
  const CardWid2({
    super.key,
    required this.d,
    required this.f,
    required this.index,
  });
  final double d;

  final bool f;
  final int index;

  @override
  Widget build(BuildContext context) {
    HomePageController controller = HomePageController();
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000 + (index * 500)),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(f ? 0 : d, 0, 0),
        height: 270,
        width: 300,
        child: Stack(
          children: [
            SizedBox(
              height: 255,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    margin:
                        const EdgeInsets.only(bottom: 10, right: 22, left: 22),
                    child: Container(
                      height: 200,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      margin:
                          const EdgeInsets.only(left: 5, bottom: 5, right: 5),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 110,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 110,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  controller.section4[index],
                                                ),
                                                fit: BoxFit.fitWidth)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            "Welcom to the KAN company\ndesigned and programming everything of application",
                            style: TextStyle(
                                fontSize: 16, fontStyle: FontStyle.normal),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 70,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    controller.section5[index],
                    style: const TextStyle(
                        fontSize: 20, fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
