import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ican/screens/home/controller.dart';

class CardWid1 extends StatelessWidget {
  const CardWid1({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final HomePageController controller = HomePageController();
    return Center(
      child: SizedBox(
        height: 190,
        width: 300,
        child: Stack(
          children: [
            SizedBox(
              height: 190,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                margin: const EdgeInsets.only(bottom: 10, right: 22, left: 22),
                child: Container(
                  height: 180,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  margin: const EdgeInsets.only(left: 5, bottom: 5, right: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 130,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              child: Stack(
                                children: [
                                  Hero(
                                    tag: "im1$index",
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                            bottomRight: Radius.circular(50),
                                          ),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                controller.section3[index],
                                              ),
                                              fit: BoxFit.fitWidth)),
                                    ),
                                  ),
                                  Positioned(
                                      top: 68,
                                      right: 10,
                                      child: Hero(
                                        tag: "im2$index",
                                        child: SvgPicture.asset(
                                          controller.section2[index],
                                          width: 55,
                                          height: 55,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "Welcom to the KAN company",
                        style: TextStyle(
                            fontSize: 16, fontStyle: FontStyle.normal),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              left: 70,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    controller.section1[index],
                    style: const TextStyle(
                        fontSize: 20, fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
