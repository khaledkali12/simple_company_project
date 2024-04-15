import 'package:flip_card/flip_card.dart';

import 'package:flutter/material.dart';
import 'package:ican/constant.dart';

// class NewWid extends StatelessWidget {
//   const NewWid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: NewWid1(),
//     );
//   }
// }

class NewWid1 extends StatelessWidget {
  const NewWid1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
             

              fill: Fill
                  .fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              side: CardSide.FRONT, // The side to initially display.
              back: Container(
                height: 320,
                width: 160,
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                // margin:
                //     const EdgeInsets.only(bottom: 10, right: 30, left: 30),
                child: Container(
                    height: 200,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(Assets.l1), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // child: Text("vmdvd"),
                    margin:
                        const EdgeInsets.only(left: 5, top: 5, bottom: 5)),
              ),
              front: Container(
                height: 320,
                width: 160,
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                // margin:
                //     const EdgeInsets.only(bottom: 10, right: 30, left: 30),
                child: Container(
                    height: 200,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(Assets.p4), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // child: Text("vmdvd"),
                    margin:
                        const EdgeInsets.only(left: 5, top: 5, bottom: 5)),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  side: CardSide.FRONT, // The side to initially display.
                  back: Container(
                    height: 155,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // margin:
                    //     const EdgeInsets.only(bottom: 10, right: 30, left: 30),
                    child: Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(Assets.l2),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        // child: Text("vmdvd"),
                        margin: const EdgeInsets.only(
                          right: 5,
                          top: 5,
                        )),
                  ),
                  front: Container(
                    height: 155,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // margin:
                    //     const EdgeInsets.only(bottom: 10, right: 30, left: 30),
                    child: Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(Assets.p5),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        // child: Text("vmdvd"),
                        margin: const EdgeInsets.only(
                          right: 5,
                          top: 5,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  side: CardSide.FRONT, // The side to initially display.
                  back: Container(
                    height: 155,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // margin:
                    //     const EdgeInsets.only(bottom: 10, right: 30, left: 30),
                    child: Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(Assets.l3),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        // child: Text("vmdvd"),
                        margin: const EdgeInsets.only(
                          right: 5,
                          bottom: 5,
                        )),
                  ),
                  front: Container(
                    height: 155,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // margin:
                    //     const EdgeInsets.only(bottom: 10, right: 30, left: 30),
                    child: Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(Assets.p3),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        // child: Text("vmdvd"),
                        margin: const EdgeInsets.only(right: 5, bottom: 5)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
