import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:ican/constant.dart';

import 'package:ican/screens/sitting/appbar.dart';

class InfoWid extends StatelessWidget {
  InfoWid({super.key});
  final GlobalKey<ScaffoldState> rkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: rkey,
      appBar: CustomAppBar(
        globalKey: rkey,
        title: "من نحن",
        back: true,
        drawer: false,
      ),
      body: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            back: Container(
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              margin: const EdgeInsets.only(bottom: 10, right: 30, left: 30),
              child: Container(
                  height: 0,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(Assets.info), fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  // child: Text("vmdvd"),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
            ),
            front: const Column(
              children: [
                CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.yellow,
                    child: Hero(
                      tag: 2,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          Assets.logo2,
                        ),
                        radius: 95,
                      ),
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "KAN Technical",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            )),
        const SizedBox(
          height: 15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 1,
              child: Text(
                "من نحن",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.yellow, width: 5)),
          child: const Text(
            '''شركة هندسيةجديدة للاستشارات والحلول البرمجية والتقنية وكل ما يتعلق بتكنولوجيا المعلومات والاتصالات.
للشركة 5 اقسام رئيسية وهي :
- قسم البرمجيات ويضم :
برامج Windows.
تطبيقات موبايل ( Android / iOS).
مواقع الكترونية .
- قسم التصاميم والغرافيكس.
- قسم المونتاج وتحرير الفيديوهات.
- قسم التسويق الرقمي والحملات الاعلانية وادارة مواقع التواصل الاجتماعي.
- قسم الدعم التقني والسوفت وير .
بالاضافة لقسم خاص لمشاريع التخرج للطلاب وقسم التدريب العملي والمهني.


 ''',
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
