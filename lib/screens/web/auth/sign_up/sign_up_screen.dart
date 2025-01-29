import 'package:dhan_dhoom_web/core/shades_widget.dart';
import 'package:dhan_dhoom_web/screens/web/auth/login_screen.dart';
import 'package:dhan_dhoom_web/screens/web/auth/sign_up/sign_up_next_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../core/button_widget.dart';
import '../../../../core/clickable_widget.dart';
import '../../../../core/consts.dart';
import '../../../../core/text_form_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  var myFormKey = GlobalKey<FormState>();
  TextEditingController myFirstNameController = TextEditingController();
  TextEditingController myLastNameController = TextEditingController();
  TextEditingController myEmailController = TextEditingController();
  TextEditingController myCPasswordController = TextEditingController();
  TextEditingController myConfirmPasswordController = TextEditingController();

  @override
  void dispose() {
    myFirstNameController.dispose();
    myLastNameController.dispose();
    myEmailController.dispose();
    myCPasswordController.dispose();
    myConfirmPasswordController.dispose();
    super.dispose();
  }

  onButtonPressed() async {
    if (myFormKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const SignUpNextScreen(),
        ),
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

                      Column(
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


                              Container(
                                height: 320,
                                width: 320,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.transparent
                                ),
                                child: Image(image: AssetImage("assets/crousel_images/crousel (1).png")),
                              )


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
                                    text: "Login",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                            const LoginScreen(),
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
                      )

                    ],
                  ),
                ),



                Form(
                  key: myFormKey,
                  child: Column(
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
                            "Signup",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          LineWidget(),



                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "First Name",
                                    style: TextStyle(
                                      color: Color(0xFFF6F3EE),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: fullWidth/6,
                                    child: TextFormFieldWidget(
                                      myController: myFirstNameController,
                                      hintText: "Enter first name",
                                      validator:
                                      RequiredValidator(errorText: "*required").call,
                                      isGiveBottomPadding: false,
                                      prefixWidget:
                                      SvgPicture.asset("assets/start_icons/name.svg"),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(width: 20,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  const Text(
                                    "Last Name",
                                    style: TextStyle(
                                      color: Color(0xFFF6F3EE),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),

                                  SizedBox(
                                    width: fullWidth/6,
                                    child: TextFormFieldWidget(
                                      myController: myLastNameController,
                                      hintText: "Enter last name",
                                      isGiveBottomPadding: false,
                                      validator:
                                      RequiredValidator(errorText: "*required").call,
                                      prefixWidget:
                                      SvgPicture.asset("assets/start_icons/name.svg"),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),

                          const Text(
                            "Email",
                            style: TextStyle(
                              color: Color(0xFFF6F3EE),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: fullWidth/3+20,
                            child: TextFormFieldWidget(
                              myController: myEmailController,
                              hintText: "Enter email address",
                              isGiveBottomPadding: false,
                              validator:
                              RequiredValidator(errorText: "*required").call,
                              prefixWidget:
                              SvgPicture.asset("assets/start_icons/mail.svg"),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Create Password",
                                    style: TextStyle(
                                      color: Color(0xFFF6F3EE),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: fullWidth/6,
                                    child: TextFormFieldWidget(
                                      myController: myCPasswordController,
                                      hintText: "****************",
                                      isGiveBottomPadding: false,
                                      validator:
                                      RequiredValidator(errorText: "*required").call,
                                      suffixIcon:
                                      SvgPicture.asset("assets/start_icons/hide.svg"),
                                      prefixWidget: SvgPicture.asset(
                                          "assets/start_icons/password.svg"),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(width: 20,),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Confirm Password",
                                    style: TextStyle(
                                      color: Color(0xFFF6F3EE),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: fullWidth/6,
                                    child: TextFormFieldWidget(
                                      myController: myConfirmPasswordController,
                                      hintText: "****************",
                                      isGiveBottomPadding: false,
                                      validator:
                                      RequiredValidator(errorText: "*required").call,
                                      suffixIcon:
                                      SvgPicture.asset("assets/start_icons/hide.svg"),
                                      prefixWidget: SvgPicture.asset(
                                          "assets/start_icons/password.svg"),
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),


                          const SizedBox(height: 10),

                          SizedBox(
                            width: fullWidth/3+20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                SizedBox(
                                  width: 120,
                                  height: 50,
                                  child: ButtonWidget(
                                    text: "Back",
                                    onPressed: (){Navigator.of(context).pop();},
                                    isShowIcon: true,
                                    icon: "assets/start_icons/arrow_left.svg",
                                    isIconStart: true,
                                    btnColor: Colors.transparent,
                                    borderColor: whiteColor.withOpacity(0.5),
                                    fontSize: 12,
                                  ),
                                ),

                                SizedBox(
                                  width: 120,
                                  height: 50,
                                  child: ButtonWidget(
                                    text: "Next",
                                    fontSize: 12,
                                    onPressed: onButtonPressed,
                                    isShowIcon: true,
                                    icon: "assets/start_icons/arrow_right.svg",
                                  ),
                                ),


                              ],
                            ),
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
                ),
                SizedBox(),
          ]
            ),
          )
        ],
      ),
    );
  }
}



