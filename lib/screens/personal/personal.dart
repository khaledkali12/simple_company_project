import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ican/constant.dart';
import 'package:ican/models/personal_model.dart';

class PersonalWid extends StatelessWidget {
  const PersonalWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 65,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.yellow,
                child: SizedBox(
                    height: 95, width: 95, child: Image.asset(Assets.young)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "خالد الطيان",
              style: TextStyle(color: Colors.black, fontSize: 24),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              children: List.generate(
                  4,
                  (index) => PersonCard(
                        index: index,
                      )),
            ))
      ]),
    );
  }
}

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: index == 3 ? 10 : 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Person.t1[index],
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      Person.t2[index],
                      style: const TextStyle(color: Colors.black, fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(
                    Person.im[index],
                    // ignore: deprecated_member_use
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: index == 3
                ? const SizedBox(
                    height: 0,
                    width: 0,
                  )
                : const Divider(color: Colors.white, thickness: 2),
          )
        ],
      ),
    );
  }
}
