import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app/screens/login_screen/login_screen.dart';
import 'package:food_app/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

import '../../utils/app_colors.dart';

class registerPage extends StatefulWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  var _isObscure = true;
  final _firstName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _phone = TextEditingController();
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
                          "Register",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: kblack,
                          ),
                        ),
                        Text(
                          "Create account",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 16,
                            color: kblack,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First Name",
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 16,
                        color: kblack,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your first name",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14,
                          color: kblack,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblack,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 16,
                        color: kblack,
                      ),
                    ),
                    TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14,
                          color: kblack,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblack,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 16,
                        color: kblack,
                      ),
                    ),
                    TextField(
                      controller: _password,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
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
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14,
                          color: kblack,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblack,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 16,
                        color: kblack,
                      ),
                    ),
                    TextField(
                      controller: _password,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
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
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14,
                          color: kblack,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblack,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 16,
                        color: kblack,
                      ),
                    ),
                    TextField(
                      controller: _phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14,
                          color: kblack,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblack,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (inputValidator()) {
                              print('Success!');
                            } else {
                              print('Failed!');
                            }
                          },
                          child: Text("Register"),
                          style: ElevatedButton.styleFrom(
                            elevation: 2,
                            primary: Color(0xffFFD200),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 137,
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 14,
                            color: kblack,
                          ),
                          children: [
                            TextSpan(
                              text: "Login",
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: kblack,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const loginPage(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        )),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool inputValidator() {
    var isValid = false;
    if (_firstName.text.isEmpty ||
        _email.text.isEmpty ||
        _password.text.isEmpty ||
        _phone.text.isEmpty ||
        _confirmPassword.text.isEmpty) {
      isValid = false;
    } else if (EmailValidator.validate(_email.text)) {
      isValid = false;
    } else if (_phone.text.length != 10) {
      isValid = false;
    } else {
      isValid = true;
    }
    return isValid;
  }
}
