import 'package:flutter/material.dart';
import 'package:my_app/modules/base_module/bottom_navigation.dart';
import 'package:my_app/utils/colors.dart';

class OtpScreen extends StatefulWidget {
  final String? phoneNumber;
  const OtpScreen({this.phoneNumber, super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final formKey2 = GlobalKey<FormState>();
  TextEditingController mobile = TextEditingController();
  String? errorText = '';
  bool autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Group 116.png'),
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Enter OTP received\nin messages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '6 Digits code sent to ',
                      style: TextStyle(color: greyColor, fontSize: 15),
                    ),
                    TextSpan(
                      text: '+91 ${widget.phoneNumber}',
                      style: TextStyle(color: tealColor, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Resend OTP',
                  style: TextStyle(color: tealColor),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Form(
              key: formKey2,
              child: Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: TextFormField(
                  cursorColor: Colors.black,
                  textAlign: TextAlign.center,
                  controller: mobile,
                  validator: (value) {
                    if (mobile.text.trim().length != 6) {
                      errorText = 'Please Enter Valid OTP';
                      autoValidate = false;
                    } else {
                      autoValidate = true;
                    }
                    setState(() {});
                    return null;
                  },
                  onChanged: (value) {
                    autoValidate = true;
                    errorText = '';
                    setState(() {});
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  decoration: InputDecoration(
                    hintText: 'Enter your OTP',
                    counterText: '',
                    isDense: true,
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color:
                                errorText == '' ? Colors.black : Colors.red)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color:
                                errorText == '' ? Colors.black : Colors.red)),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: errorText == '' ? Colors.black : Colors.red,
                      ),
                    ),
                    errorText: errorText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                height: 60,
                width: 350,
                child: ElevatedButton(
                  child: Text(
                    'Next',
                    style: TextStyle(color: whiteColor),
                  ),
                  onPressed: () {
                    formKey2.currentState!.validate();
                    if (autoValidate) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigationModule(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: tealColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
