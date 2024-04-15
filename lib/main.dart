import 'package:flutter/material.dart';
import 'package:ican/button_navigation.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 239, 93)),
        // scaffoldBackgroundColor: const Color.fromARGB(255, 138, 138, 136),

        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      // home:const Flip(),
      home: const ButtonNavicationWid(),
      // home: CardWid1(),
      // home: SplashWid(),
      // home: PlayPauseAnimation(),
      // home: PlayOneShotAnimation(),
      // home: NewWid(),
      // home: RegScreen(),
      //  home: Conn3(),
      //  home:SectionWid() ,
    );
  }
}
