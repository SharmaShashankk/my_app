import 'package:flutter/material.dart';
import 'package:my_app/modules/login_screen_module/screen/otpScreen.dart';
import 'package:my_app/services/sharedpreferences.dart';
import 'package:my_app/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
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
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Enter Your Mobile Number',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: Column(
                  children: [
                    Material(
                      child: TextFormField(
                        cursorColor: Colors.black,
                        controller: mobile,
                        validator: (value) {
                          if (mobile.text.trim().length != 10) {
                            errorText = 'Please Enter Valid Mobile Number';
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
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: errorText == ''
                                      ? Colors.black
                                      : Colors.red)),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color:
                                  errorText == '' ? Colors.black : Colors.red,
                            ),
                          ),
                          errorText: errorText,
                          isDense: true,
                          counterText: '',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: errorText == ''
                                      ? Colors.black
                                      : Colors.red)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  const BorderSide(color: Colors.black)),
                          prefix: const Text('+91 '),
                          hintText: 'Enter your Mobile Number',
                          hintStyle: TextStyle(color: tealColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                height: 60,
                width: 350,
                child: ElevatedButton(
                  onPressed: () async {
                    print(mobile);
                    formKey.currentState!.validate();
                    if (autoValidate) {
                      await SharedPreference.setStringData(
                          key: 'phone', value: mobile.text.toString());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              OtpScreen(phoneNumber: mobile.text),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: tealColor),
                  child: Text(
                    'Next',
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
