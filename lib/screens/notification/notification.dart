import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ican/constant.dart';
import 'package:ican/models/notification_model.dart';

class NotificationWid extends StatefulWidget {
  const NotificationWid({super.key});

  @override
  State<NotificationWid> createState() => _NotificationWidState();
}

class _NotificationWidState extends State<NotificationWid> {
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
    const data = '''من ادارة KAN
نهنئكم بمناسبة ليلة النصف من الشعبان 
تقبل الله صيامكم وعملكم وجعله في ميزان اعمالك 
كل عام وانتم بخير 

''';
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
              2,
              (index) => CardNew(
                data: data,
                index: index,
                d: scwid,
                f: startanimation,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardNew extends StatelessWidget {
  const CardNew(
      {super.key,
      required this.data,
      required this.index,
      required this.d,
      required this.f});

  final String data;
  final int index;
  final double d;

  final bool f;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000 + (index * 500)),
      curve: Curves.easeInOut,
      transform: Matrix4.translationValues(f ? 0 : d, 0, 0),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 470,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 238, 216, 18),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(75), bottomRight: Radius.circular(75))),
      child: Column(
        children: [
          Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Notification1.img[index]),
                      fit: BoxFit.fill),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(75),
                      bottomRight: Radius.circular(75))),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 12)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              data,
              textDirection: TextDirection.rtl,
              style: const TextStyle(color: Colors.white, fontSize: 20),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                SizedBox(
                    height: 25,
                    width: 25,
                    child: SvgPicture.asset(
                      Assets.back2,
                      // ignore: deprecated_member_use
                      color: Colors.black,
                    )),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "عرض التفاصيل",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
