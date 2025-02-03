import 'package:dhan_dhoom_web/core/button_widget.dart';
import 'package:dhan_dhoom_web/core/consts.dart';
import 'package:dhan_dhoom_web/core/lined_tittle.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/player_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/side_notification_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/team_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/matches_content_widget.dart';
import 'package:dhan_dhoom_web/screens/web/my_team/my_team_screen.dart';
import 'package:dhan_dhoom_web/screens/web/wallet/wallet_side_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/shades_widget.dart';
import '../common_widgets.dart';
import '../dashboard/dashboard_screen.dart';
import '../fantacy/fantacy_screen.dart';
import '../leaderboard/leader_board_screen.dart';
import '../settings/Settings_screen.dart';


class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(1),
      body: Stack(
        children: [
          WebBackgroundWidget(),

          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                // hasScrollBody: false,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: fullHeight+fullHeight+300,
                      width: fullWidth/6.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [mainAppColor.withOpacity(0.5), Color(0xFF8D2D7D)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: fullWidth/30,top: 50),
                                width: 84,
                                height: 48,
                                child: SvgPicture.asset(
                                  "assets/start_icons/logo.svg",
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 35,),

                          Expanded(
                            child: ListView.builder(
                              itemCount: iconsList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  crossAxisAlignment: index==6?CrossAxisAlignment.center: CrossAxisAlignment.start,
                                  children: [

                                    index == 6?Container(
                                      height: 2,
                                      width: fullWidth/8+10,
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ):
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          currentItem=index;
                                        });
                                        if(index==0){
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>  DashboardScreen(),
                                            ),
                                                (route) => false,
                                          );
                                        }
                                        if(index==1){
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>  MyTeamScreen(),
                                            ),
                                                (route) => false,
                                          );
                                        }
                                        if(index==2){
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>  FantacyScreen(),
                                            ),
                                                (route) => false,
                                          );
                                        }
                                        if(index==3){
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>  WalletScreen(),
                                            ),
                                                (route) => false,
                                          );
                                        }
                                        if(index==4){
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>  LeaderBoardScreen(),
                                            ),
                                                (route) => false,
                                          );
                                        }
                                        if(index==5){
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>  SettingsScreen(),
                                            ),
                                                (route) => false,
                                          );
                                        }
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(left: fullWidth/80),
                                          padding: EdgeInsets.only(left: 10,right: fullWidth/8-100,bottom: 7,top: 7),
                                          decoration: BoxDecoration(
                                            color: index != currentItem?null: whiteColor.withOpacity(0.4),
                                            borderRadius: BorderRadius.circular(37),
                                          ),
                                          child: SvgPicture.asset(iconsList[index], width: index==3?70:index==4||index==7?110:index==5?80:90,)),
                                    ),
                                    SizedBox(height: index == 5?25: 10,)
                                  ],
                                );
                              },),
                          )


                        ],
                      ),
                    ),




                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(dp, 0, dp, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          SizedBox(height: 10),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SearchField(width: fullWidth/2.5,),

                              WalletBalance(),

                            ],
                          ),

                          SizedBox(height: 10,),
                          Text(
                            "Wallet",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),

                          SizedBox(height: 30,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/start_icons/wallet.svg"),
                                      SizedBox(width: 15,),
                                      Text(
                                        "\$12,000",
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  SizedBox(
                                    width: fullWidth/3.7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 14,bottom: 14,left: 25,right: 25),
                                          decoration: BoxDecoration(
                                              color: whiteColor.withOpacity(0.1),
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Row(
                                            children: [

                                              SizedBox(
                                                height: 20,
                                                  width: 20,
                                                  child: Image.asset("assets/main_icons/upIcon.png")),
                                              SizedBox(width: 15,),
                                              Text(
                                                "Deposit",
                                                style: TextStyle(
                                                  color: whiteColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Container(
                                          padding: EdgeInsets.only(top: 14,bottom: 14,left: 25,right: 25),
                                          decoration: BoxDecoration(
                                              color: whiteColor.withOpacity(0.1),
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Row(
                                            children: [

                                              SizedBox(
                                                height: 20,
                                                  width: 20,
                                                  child: Image.asset("assets/main_icons/downIcon.png")),
                                              SizedBox(width: 15,),
                                              Text(
                                                "Withdraw",
                                                style: TextStyle(
                                                  color: whiteColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    width: fullWidth/3.7,
                                    padding: EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Transaction History",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 12,
                                          ),
                                        ),
                                    SizedBox(height: 20,),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 7,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Withdraw",
                                                  style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                                SizedBox(width: 12,),

                                                Text(
                                                  "\$20000",
                                                  style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                                SizedBox(width: 12,),


                                                Text(
                                                  "dd/mm/yyyy",
                                                  style: TextStyle(
                                                    color: whiteColor,
                                                    fontSize: 12,
                                                  ),
                                                ),

                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                          ],
                                        );
                                      },

                                    ),

                                      ],
                                    ),
                                  ),

                                ],
                              ),



                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: whiteColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Payment Gateway",
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                          height: 15,
                                          child: Checkbox(
                                            value: isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                            activeColor: Colors.pink,
                                            checkColor: Colors.white,
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            visualDensity: VisualDensity.compact,
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        Text(
                                          "Credit/Debit Card",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15,),

                                    Container(
                                      height: 40,
                                      width: fullWidth/4.5,
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(.04),
                                        borderRadius: BorderRadius.circular(30),
                                        // border: Border.all(
                                        //   color: blackColor.withOpacity(.6),
                                        //   width: 1,
                                        // ),
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          // controller: mySearchController,
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textInputAction: TextInputAction.done,
                                          keyboardType: TextInputType.text,
                                          autofocus: false,
                                          decoration: InputDecoration(
                                            fillColor: whiteColor.withOpacity(.1),
                                            filled: true,
                                            suffixStyle: const TextStyle(
                                              color: blackColor,
                                            ),

                                            hintText: "5555 666 77 888 99",
                                            hintStyle: TextStyle(
                                              color: Color(0xFFA4A4A4),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            errorStyle: const TextStyle(
                                              color: alertColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFD7DCE4),
                                                width: 1,
                                              ),
                                            ),
                                            contentPadding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15,),

                                    Container(
                                      height: 40,
                                      width: fullWidth/4.5,
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(.04),
                                        borderRadius: BorderRadius.circular(30),
                                        // border: Border.all(
                                        //   color: blackColor.withOpacity(.6),
                                        //   width: 1,
                                        // ),
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          // controller: mySearchController,
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textInputAction: TextInputAction.done,
                                          keyboardType: TextInputType.text,
                                          autofocus: false,
                                          decoration: InputDecoration(
                                            fillColor: whiteColor.withOpacity(.1),
                                            filled: true,
                                            suffixStyle: const TextStyle(
                                              color: blackColor,
                                            ),
                                            hintText: "Expire date-",
                                            hintStyle: TextStyle(
                                              color: Color(0xFFA4A4A4),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            errorStyle: const TextStyle(
                                              color: alertColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFD7DCE4),
                                                width: 1,
                                              ),
                                            ),
                                            contentPadding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15,),

                                    Container(
                                      height: 40,
                                      width: fullWidth/4.5,
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(.01),
                                        borderRadius: BorderRadius.circular(30),
                                        // border: Border.all(
                                        //   color: blackColor.withOpacity(.6),
                                        //   width: 1,
                                        // ),
                                      ),
                                      child: Center(
                                        child: TextFormField(
                                          // controller: mySearchController,
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textInputAction: TextInputAction.done,
                                          keyboardType: TextInputType.text,
                                          autofocus: false,
                                          decoration: InputDecoration(
                                            fillColor: whiteColor.withOpacity(.1),
                                            filled: true,

                                            hintText: "CVV-",
                                            hintStyle: TextStyle(
                                              color: Color(0xFFA4A4A4),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            errorStyle: const TextStyle(
                                              color: alertColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFD7DCE4),
                                                width: 1,
                                              ),
                                            ),
                                            contentPadding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 70,),


                                    ButtonWidget(text: "Make Payment",onPressed: (){},width: fullWidth/4.5,)

                                  ],
                                ),
                              )




                            ],
                          )




                        ],
                      ),
                    ),
                  ),






                    // MatchesWidget(),
                    WalletSideNotificationWidget()




                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }

  List iconsList = [
    "assets/main_icons/dashboard.svg",
    "assets/main_icons/my_team.svg",
    "assets/main_icons/fantasy.svg",
    "assets/main_icons/wallet.svg",
    "assets/main_icons/leaderboard.svg",
    "assets/main_icons/settings.svg",
    "assets/main_icons/line.svg",
    "assets/main_icons/loby.svg"

  ];
  int currentItem = 3;

bool isChecked = false;

}







