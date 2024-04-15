import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:ican/constant.dart';

// ignore: must_be_immutable
class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  String newValue = "Male";
  late PlatformFile file;
  String date = "Chose Year";
  String upload = "Upload CV";
  bool start = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        start = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double size1 = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: size1 + 20,
          child: Stack(
            children: [
              Container(
                height: double.maxFinite,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.yellow,
                    Colors.orange,
                  ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 22),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    transform:
                        Matrix4.translationValues(start ? 0 : size1 + 20, 0, 0),
                    child: const Text(
                      'Join for\nKAN',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  height: double.maxFinite,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.check,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'Full Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736),
                                ),
                              )),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.check,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'Phone or Gmail',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736),
                                ),
                              )),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.check,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'Specialization',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736),
                                ),
                              )),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.check,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'The Military Situation',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736),
                                ),
                              )),
                        ),
                        DropdownButton<String>(
                          value: newValue,
                          items: <String>['Male', 'Female'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: const TextStyle(
                                    color: Color(0xffB81736),
                                  )),
                            );
                          }).toList(),
                          onChanged: (String? val) {
                            setState(() {
                              newValue = val!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2025))
                                .then(
                              (value) {
                                setState(() {
                                  date = value!.year.toString();
                                });
                              },
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.easeInOut,
                            transform: Matrix4.translationValues(
                                start ? 0 : size1 + 20, 0, 0),
                            width: 150,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.yellow,
                                Colors.orange,
                              ]),
                            ),
                            child: Center(
                              child: Text(
                                date,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();

                            if (result != null) {
                              file = result.files.first;

                              setState(() {
                                upload = file.name;
                              });
                            } else {
                              // User canceled the picker
                            }
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 900),
                            curve: Curves.easeInOut,
                            transform: Matrix4.translationValues(
                                start ? 0 : size1 + 20, 0, 0),
                            width: 150,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.yellow,
                                Colors.orange,
                              ]),
                            ),
                            child: Center(
                              child: Text(
                                upload,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.success,
                              animType: AnimType.rightSlide,
                              title: 'Thank you for SignUp',
                              desc: 'SignUp Success',
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                            ).show();
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 1200),
                            curve: Curves.easeInOut,
                            transform: Matrix4.translationValues(
                                start ? 0 : size1 + 20, 0, 0),
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(colors: [
                                Colors.yellow,
                                Colors.orange,
                              ]),
                            ),
                            child: const Center(
                              child: Text(
                                'JOIN IN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 150,
                child: CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.yellow,
                    child: SizedBox(
                        height: 75,
                        width: 75,
                        child: Image.asset(Assets.young)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
