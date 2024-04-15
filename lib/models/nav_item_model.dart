import 'package:ican/models/rive_model.dart';

class NavItemModel {
  final String title;
  final RiveModel rive;

  NavItemModel({required this.title, required this.rive});
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(
      title: "Home",
      rive: RiveModel(
          src: 'assets/rive/animated_icon_set_-_1_color.riv',
          arthboard: "HOME",
          stateMachineName: "HOME_interactivity")),
  NavItemModel(
      title: "Chat",
      rive: RiveModel(
          src: 'assets/rive/animated_icon_set_-_1_color.riv',
          arthboard: "CHAT",
          stateMachineName: "CHAT_Interactivity")),
  NavItemModel(
      title: "Timer",
      rive: RiveModel(
          src: 'assets/rive/animated_icon_set_-_1_color.riv',
          arthboard: "TIMER",
          stateMachineName: "TIMER_Interactivity")),
  NavItemModel(
      title: "Bell",
      rive: RiveModel(
          src: 'assets/rive/animated_icon_set_-_1_color.riv',
          arthboard: "BELL",
          stateMachineName: "BELL_Interactivity")),
  NavItemModel(
      title: "User",
      rive: RiveModel(
          src: 'assets/rive/animated_icon_set_-_1_color.riv',
          arthboard: "USER",
          stateMachineName: "USER_Interactivity"))
];
