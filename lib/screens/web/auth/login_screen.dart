import 'package:dhan_dhoom_web/core/shades_widget.dart';
import 'package:dhan_dhoom_web/screens/web/auth/forget_password_screen.dart';
import 'package:dhan_dhoom_web/screens/web/auth/sign_up/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../core/button_widget.dart';
import '../../../core/clickable_widget.dart';
import '../../../core/consts.dart';
import '../../../core/text_form_field_widget.dart';
import '../dashboard/dashboard_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var myFormKey = GlobalKey<FormState>();
  TextEditingController myEmailController = TextEditingController();
  TextEditingController myPasswordController = TextEditingController();

  @override
  void dispose() {
    myEmailController.dispose();
    myPasswordController.dispose();
    super.dispose();
  }

  onButtonPressed() async {
    if (myFormKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const DashboardScreen(),
        ),
            (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.95),
      body: Stack(
        children: [
          WebBackgroundWidget(),

          Padding(
            padding: const EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),

                Container(
                  height: fullHeight,
                  width: fullWidth/3,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30),
                    border: Border(
                      left: BorderSide(color: Colors.black,width: 0.5),
                      right: BorderSide(color: Colors.black,width: 0.5),
                      top:  BorderSide(color: Colors.black,width: 0.8),
                      bottom: BorderSide(color: Colors.black,width: 5),
                    ),

                  ),
                  child: Stack(
                    children: [
                      LongCardBgWidget(borderRadius: 30,),

                      Form(
                        key: myFormKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  SizedBox(
                                    width: 84,
                                    height: 48,
                                    child: SvgPicture.asset(
                                      "assets/start_icons/logo.svg",
                                    ),
                                  ),

                                  SvgPicture.asset("assets/start_icons/age.svg"),
                                ],
                              ),
                            ),

                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: "Score points ",
                                        style: TextStyle(
                                          color: mainAppColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: "Fellix",
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "to climb the\nleaderboard",
                                            style: TextStyle(
                                              color: Color(0xFFF6F3EE),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Fellix",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                FlutterCarousel(
                                  options: FlutterCarouselOptions(
                                    height: 280.0,
                                    showIndicator: true,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 2),
                                    slideIndicator: CircularSlideIndicator(slideIndicatorOptions: SlideIndicatorOptions(
                                        indicatorBackgroundColor: Colors.transparent,
                                        indicatorBorderColor: Colors.white,
                                      indicatorRadius: 3,
                                      itemSpacing: 10
                                    )),
                                  ),
                                  items: [1,2,3,4].map((i) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 280,
                                            width: 250,
                                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                                            decoration: BoxDecoration(
                                                color: Colors.transparent
                                            ),
                                            child: Image(image: AssetImage("assets/crousel_images/crousel ($i).png")),
                                        );
                                      },
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),

                            SizedBox(),
                            SizedBox(),
                            SizedBox(),

                            Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: RichText(
                                text: TextSpan(
                                  text: "Don’t have an account? ",
                                  style: TextStyle(
                                    color: whiteColor.withOpacity(.80),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Fellix",
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Sign up",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                              const SignUpScreen(),
                                            ),
                                          );
                                        },
                                      style: TextStyle(
                                        color: mainAppColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Fellix",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                          ],
                        ),
                      )

                    ],
                  ),
                ),



                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 84,
                          height: 48,
                          child: SvgPicture.asset(
                            "assets/start_icons/logo.svg",
                          ),
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        LineWidget(),
                        const Text(
                          "Email",
                          style: TextStyle(
                            color: Color(0xFFF6F3EE),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: fullWidth/3,
                          child: TextFormFieldWidget(
                            myController: myEmailController,
                            hintText: "Enter email address",
                            validator:
                            RequiredValidator(errorText: "*required").call,
                            prefixWidget:
                            SvgPicture.asset("assets/start_icons/mail.svg"),
                          ),
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(
                            color: Color(0xFFF6F3EE),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: fullWidth/3,
                          child: TextFormFieldWidget(
                            myController: myPasswordController,
                            hintText: "****************",
                            validator:
                            RequiredValidator(errorText: "*required").call,
                            suffixIcon:
                            SvgPicture.asset("assets/start_icons/hide.svg"),
                            prefixWidget: SvgPicture.asset(
                                "assets/start_icons/password.svg"),
                          ),
                        ),
                        InkWellWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                const ForgetPasswordScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Forget Password",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: whiteColor,
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: fullWidth/3,
                          child: ButtonWidget(
                            text: "Log in",
                            onPressed: onButtonPressed,
                          ),
                        ),

                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: fullWidth/3,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "Don’t have an account? ",
                                  style: TextStyle(
                                    color: whiteColor.withOpacity(.80),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Fellix",
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Sign up",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                              const SignUpScreen(),
                                            ),
                                          );
                                        },
                                      style: TextStyle(
                                        color: mainAppColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Fellix",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: fullWidth/3,
                          child: Text(
                            "This game involves an element of financial risk and may be\naddictive. Please play responsibly and at your own risk.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(.80),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Fellix",
                            ),
                          ),
                        ),
                      ],
                    ),


                  ],
                ),


                SizedBox(),

              ],

            ),
          )

        ],
      ),
    );
  }
}



