
import 'package:flutter/material.dart';

import 'package:ican/screens/home/card.dart';

import 'package:ican/screens/home/controller.dart';
import 'package:ican/screens/home/new.dart';
import 'package:ican/screens/home/slider.dart';
import 'package:ican/screens/section/section.dart';

class HomeWid extends StatelessWidget {
  HomeWid({super.key});
  final GlobalKey<ScaffoldState> rkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final HomePageController controller = HomePageController();
    return Scaffold(
      key: rkey,
      // appBar: AppBar(backgroundColor: Color(0xFF17203A)),
      // appBar:CustomAppBar(globalKey: rkey,title: "iCAN",) ,
      // endDrawer: SafeArea(
      //   child: SizedBox(
      //       width: MediaQuery.of(context).size.width / 2,
      //       child: DrawerEmployee(
      //         drawekey: rkey,
      //       )),
      // ),
      // backgroundColor: const Color.fromARGB(255, 138, 138, 136),
      body: ListView(
        children: [
          HomeAds(
            controller: controller,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Sections:",
                    style: TextStyle(fontSize: 24, color: Colors.black)),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // itemCount: controller.section.length,
              itemCount: controller.section2.length,

             
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SectionWid(index: index,),)),
                  child:  CardWid1(index: index));
              }, 
              // children: List.generate(
              //     controller.section.length,
              //     (index) =>
              //         ),
            ),
          ),
           const Padding(
            padding: EdgeInsets.only(left: 20,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("News:",
                    style: TextStyle(fontSize: 24, color: Colors.black)),
              ],
            ),
          ),
          const NewWid1(),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}
