import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/utils/util_functions.dart';

import 'getting_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      UtilFunctions.navigation(const GettingStarted(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Constants.imageAssest('food.png')),
            const SizedBox(height: 8.0),
            const Text(
              "No waiting for food",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff838383),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
