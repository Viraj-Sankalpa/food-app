import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/login_screen/register_page.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/components/custom_textfield.dart';
import 'package:email_validator/email_validator.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  var _isObscure = true;
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0x00838383),
      body: Container(
        height: size.height,
        color: const Color(0xffF5F5F5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    Constants.imageAssest('top.png'),
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          "Login",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: kblack,
                          ),
                        ),
                        Text(
                          "Access account",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 16,
                            color: kblack,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 2,
                          primary: Colors.white,
                          padding: const EdgeInsets.all(5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        child: Image.asset(
                          Constants.imageAssest('google.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 2,
                          primary: Colors.white,
                          padding: const EdgeInsets.all(5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        child: Image.asset(
                          Constants.imageAssest('facebook.png'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'Or loging with Email',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: kblack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: kblack,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            // CustomTextfeild(controller: _email),
                            TextField(
                              controller: _email,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 10,
                                  color: kblack,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Password',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: kblack,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextField(
                              controller: _password,
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                  icon: Icon(_isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 14,
                                  color: kblack,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: kwhite,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (inputValidation()) {
                                    print('Success');
                                  } else {
                                    print('Failed');
                                  }
                                },
                                child: Text(
                                  'Sign in',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: kblack,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  elevation: 2,
                                  primary: Color(0xffFFD200),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 125,
                                    vertical: 20,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Don't have an account?",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: kblack,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                    text: ' Register',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: kblack,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const registerPage()),
                                        );
                                      }),
                              ])),
                            ),
                            // Row(
                            //   children: [
                            //     Text(
                            //       'Dont Have an account?',
                            //       style: GoogleFonts.poppins(
                            //         fontSize: 14,
                            //         color: kblack,
                            //         fontWeight: FontWeight.w400,
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool inputValidation() {
    var isValid = false;
    if (_email.text.isEmpty || _password.text.isEmpty) {
      isValid = false;
    } else if (EmailValidator.validate(_email.text)) {
      isValid = false;
    } else {
      isValid = true;
    }
    return true;
  }
}
