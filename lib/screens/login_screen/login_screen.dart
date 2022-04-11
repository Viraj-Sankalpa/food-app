import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/constants.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        color: const Color(0xFFF5F5F5),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  Constants.imageAssest('top.png'),
                ),
                Center(
                  child: Column(
                    children: const [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w200,
                          color: kblack,
                        ),
                      ),
                      Text(
                        "Access account",
                        style: TextStyle(
                          fontSize: 16,
                          color: kblack,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
