import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/config/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        navigate();
      },
    );
  }

  void navigate() async {
    final isLoggedIn = FirebaseAuth.instance.currentUser != null;
    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, Routes.pageView);
    } else {
      Navigator.pushReplacementNamed(context, Routes.signupScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/images/logo.png"),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 10),
          CircularProgressIndicator(),
          SizedBox(height: 20),
          Text(
            'Developed By:',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            'Opmac Business Solutions',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      )),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(width: 5),
                Text(
                  'Made with love',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
