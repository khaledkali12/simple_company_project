import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ican/constant.dart';

import 'package:ican/screens/info/info.dart';
import 'package:ican/screens/personal/signup.dart';

class DrawerEmployee extends StatelessWidget {
  const DrawerEmployee({super.key, required this.drawekey});
  final GlobalKey<ScaffoldState> drawekey;
  @override
  Widget build(BuildContext context) {
    var yellow = Colors.yellow;
    var white = Colors.black;

    return Drawer(
      child: Scaffold(
        backgroundColor: yellow,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      drawekey.currentState?.closeEndDrawer();
                    },
                    icon: SvgPicture.asset(
                      // ignore: deprecated_member_use
                      Assets.back, color: white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Hero(
                        tag: 2,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            Assets.logo2,
                          ),
                          radius: 55,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "KAN",
                    style: TextStyle(
                      color: white,
                      fontSize: 32,
                    ),
                  )
                ],
              ),
              const Divider(color: Colors.white),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 19),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => InfoWid(),
                        ));
                        drawekey.currentState?.closeEndDrawer();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Hero(
                            tag: 1,
                            child: Text(
                              "من نحن",
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            Assets.information,
                            height: 15,
                            width: 15,
                            // ignore: deprecated_member_use
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "تواصل معنا",
                          style: TextStyle(
                            color: white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SvgPicture.asset(
                          Assets.language,
                          height: 15,
                          width: 15,
                          // ignore: deprecated_member_use
                          color: Colors.black,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegScreen(),
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              "انضم إلينا",
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.end,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            Assets.privecy,
                            height: 15,
                            width: 15,
                            // ignore: deprecated_member_use
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    minWidth: 153,
                    height: 38,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(
                          "تسجيل الخروج",
                          style: TextStyle(color: white),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        SvgPicture.asset(
                          Assets.backdoor,
                          // ignore: deprecated_member_use
                          color: Colors.black,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
