import 'package:rive/rive.dart';

class RiveModel {
  final String src, arthboard, stateMachineName;

  late SMIBool? status;

  RiveModel(
      {required this.src,
      required this.arthboard,
      required this.stateMachineName});

  set setStatus(SMIBool state) {
    status = state;
  }
}
