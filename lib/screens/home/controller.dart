import 'package:flutter/widgets.dart';
import 'package:ican/constant.dart';

class HomePageController {
  PageController pageController = PageController(viewportFraction: .8);

  List pages = [0, 0, 0, 0];
  List<String> front =[Assets.p4,Assets.p3,Assets.p2,Assets.p1,];
  List<String> back =[Assets.logo2,Assets.logo2,Assets.logo2,Assets.logo2];
  // List<String> section=[Assets.b1,Assets.b2,Assets.b3,Assets.b4,Assets.b5];
  List<String> section1=["Programming","Graphic Desigen","Video Edititing","Digital Markiting","Technical Support"];
  List<String> section2=[Assets.program,Assets.design,Assets.video,Assets.markting,Assets.technical];
  List<String> section3=[Assets.laptop,Assets.desigen1,Assets.video2,Assets.digital,Assets.support2];
    List<String> section4=[Assets.programming1,Assets.programming2,Assets.programming3];
      List<String> section5=["Desktop Software","Android&Ios App","Web Application"];
  final ValueNotifier<int> _currentPage = ValueNotifier(0);
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;
  get currentPageValue => _currentPage;
}
