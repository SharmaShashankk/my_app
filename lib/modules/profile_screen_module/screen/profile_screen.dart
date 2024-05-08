import 'package:flutter/material.dart';
import 'package:my_app/modules/login_screen_module/screen/loginPage.dart';
import 'package:my_app/services/sharedpreferences.dart';
import 'package:my_app/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String phoneNumber = '';

  getPhoneNumber() async {
    phoneNumber =
        await SharedPreference.getStringData(key: 'phone') ?? 'Number';
    setState(() {});
  }

  @override
  void initState() {
    getPhoneNumber();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              backgroundColor: Color(0xff192c5c),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: const Text(
          'My Account',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 23, top: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Profile Information',
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff192c5c),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, bottom: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: tealColor,
                          size: 30,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Username: Shashank',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, color: tealColor, size: 30),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Email: shashank@gmail.com',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: tealColor,
                          size: 30,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Phone: ${phoneNumber}',
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                endIndent: 20,
                thickness: 1,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Settings',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, bottom: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 30,
                          color: tealColor,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Notifications',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.security,
                          size: 30,
                          color: tealColor,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Security',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(Icons.language, size: 30, color: tealColor),
                        const SizedBox(width: 8),
                        const Text(
                          'Language',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(width: 150),
                        const Text(
                          'English',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                endIndent: 20,
                thickness: 1,
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 40),
                child: ElevatedButton(
                  onPressed: () async {
                    await SharedPreference.clearedSharedPreferenceData();
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ), (route) => false);
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tealColor,
                      minimumSize: const Size(300, 60)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
