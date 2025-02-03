import 'package:dhan_dhoom_web/core/clickable_widget.dart';
import 'package:dhan_dhoom_web/core/consts.dart';
import 'package:dhan_dhoom_web/core/lined_tittle.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/dashboard_screen.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/player_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/side_notification_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/team_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/matches_content_widget.dart';
import 'package:dhan_dhoom_web/screens/web/my_team/team_players_table_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/button_widget.dart';
import '../../../../core/shades_widget.dart';
import '../../dashboard/matches_points_table.dart';
import '../../leaderboard/leader_board_screen.dart';
import '../../my_team/my_team_screen.dart';
import '../../settings/Settings_screen.dart';
import '../../wallet/wallet_screen.dart';
import '../fantacy_screen.dart';



class ContextScreen extends StatefulWidget {
  const ContextScreen({super.key});

  @override
  State<ContextScreen> createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {
  bool playerSelected = false;
  final TextEditingController _entryFeeController = TextEditingController(text: "100");
  final int balance = 10;
  final int toWin = 1000;

  @override
  Widget build(BuildContext context) {
    bool isButtonDisabled = int.parse(_entryFeeController.text.isEmpty?"1":_entryFeeController.text) > balance;
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
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                        
                          children: [
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 16,),
                                    SizedBox(
                                      width: fullWidth/1.9,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: fullWidth/2.5,
                                            decoration: BoxDecoration(
                                              color: blackColor.withOpacity(.04),
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(
                                                color: blackColor.withOpacity(.6),
                                                width: 1,
                                              ),
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
                                                  fillColor: blackColor.withOpacity(.5),
                                                  filled: true,
                                                  suffixStyle: const TextStyle(
                                                    color: blackColor,
                                                  ),
                                                  prefixIcon: SvgPicture.asset(
                                                    "assets/main_icons/search.svg",
                                                  ),
                                                  prefixIconConstraints: const BoxConstraints(
                                                    minHeight: 10,
                                                    minWidth: 55,
                                                  ),
                                                  suffixIconConstraints: const BoxConstraints(
                                                    minHeight: 10,
                                                    minWidth: 55,
                                                  ),
                                                  hintText: "Type to search...",
                                                  hintStyle: TextStyle(
                                                    color: Color(0xFFA4A4A4),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
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
                                                        
                                          Container(
                                            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 25),
                                            decoration: BoxDecoration(
                                                color: blackColor.withOpacity(0.4),
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                            child: Row(
                                              children: [
                                                SvgPicture.asset("assets/start_icons/wallet.svg"),
                                                SizedBox(width: 5,),
                                                Text(
                                                  "\$12,000",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade400,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                                        
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 20,),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).pop();
                                      },
                                      child: Row(
                                        children: [
                                          Icon(Icons.arrow_back,color: whiteColor,size: 18,),
                                          SizedBox(width: 10,),
                                          Text("Back",style: TextStyle(color: whiteColor,fontSize: 14),)
                                        ],
                                      ),
                                    ),
                                                        
                                    SizedBox(height: 30,),
                                    Text("Context#12",style: TextStyle(color: whiteColor,fontSize: 14),),
                                    SizedBox(height: 10,),
                                                        
                                                        
                                    Container(
                                      width: fullWidth/1.9, // Width of the container
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1), // Background color with opacity
                                    borderRadius: BorderRadius.circular(10), // Border radius of 10
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
                                    children: [
                                      // Heading
                                      Padding(
                                        padding: const EdgeInsets.all(16.0), // Padding for the heading
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Contest details',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                      SizedBox(height: 5,),
                                                        
                                      // Subheading
                                      Text(
                                        'Lorem ipsum dolor sit amet consectetur. Id risus sapien amet eget bibendum erat turpis. Risus erat justo sed aliquam est sem. Fringilla nibh ut risus at massa ut rhoncus arcu. Interdum aliquam id nunc egestas aliquam elit.Lorem ipsum dolor sit amet consectetur. Id risus sapien amet eget bibendum erat turpis. Risus erat justo sed aliquam est sem. Fringilla nibh ut risus at massa ut rhoncus arcu. Interdum aliquam id nunc egestas aliquam elit.Lorem ipsum dolor sit amet consectetur. Id risus sapien amet eget bibendum erat turpis. Risus erat justo sed aliquam est sem. Fringilla nibh ut risus at massa ut rhoncus arcu. Interdum aliquam id nunc egestas aliquam elit.',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                      ),
                                                        
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.black, // Black background color
                                                        
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text
                                            children: [
                                              Text(
                                                'Viewing room size',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding for the text
                                                child: Text(
                                                  '33',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                                        
                                      Container(
                                        padding: EdgeInsets.all(26),
                                        decoration: BoxDecoration(
                                          // color: Colors.black, // Black background color
                                                        
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text
                                          children: [
                                            Text(
                                              'Slot left',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding for the text
                                              child: Text(
                                                '33',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                                        
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: Colors.black, // Black background color
                                                        
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text
                                            children: [
                                              Text(
                                                'Prize pool',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding for the text
                                                child: Text(
                                                  '\$33000',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                                        
                                      Container(
                                        padding: EdgeInsets.all(26),
                                        decoration: BoxDecoration(
                                          // color: Colors.black, // Black background color
                                                        
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text
                                          children: [
                                            Text(
                                              'Entry Fees',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding for the text
                                              child: Text(
                                                '\$33000',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                                        
                                    ],
                                  ),
                                ),
                                                        
                                                        
                                                        
                                                        
                                  ],
                                ),
                        
                        
                                Container(
                                  width: fullWidth/4,
                                  height: 500,
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [mainAppColor.withOpacity(0.5), Color(0xFF111111)],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                        
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                        
                                      // SizedBox(height: 20),
                        
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                        
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey.shade800,
                                                      spreadRadius: 0,
                                                      blurRadius: 1,
                                                      offset: Offset(0, 1)
                                                  )
                                                ]
                                            ),
                                            child: Icon(Icons.notifications_none,color: Colors.grey.shade700,size: 18,),
                        
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.circular(30),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey.shade700,
                                                      spreadRadius: 0.2,
                                                      blurRadius: 0.5,
                                                      offset: Offset(0, 0)
                                                  )
                                                ]
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor: blackColor,
                                                  foregroundImage: AssetImage("assets/main_icons/avatar.png"),
                                                ),
                        
                                                SizedBox(width: 10,),
                        
                                                Text(
                                                  "Julliet Jackson",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade400,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                        
                                                Icon(Icons.arrow_drop_down_outlined,color: whiteColor,size: 12,)
                        
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                        
                        
                                      SizedBox(height: 30),
                        
                        
                                      // Entry Fee & To Win
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              _buildInputCard("Entry Fee", _entryFeeController,fullWidth/10,120),
                                              _buildDisplayCard("To Win", toWin.toString(),fullWidth/10,120),
                                            ],
                                          ),
                        
                                          SizedBox(height: 10),
                        
                                          // Balance Text
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Balance: $balance",
                                              style: TextStyle(color: Colors.white, fontSize: 14),
                                            ),
                                          ),
                        
                                          SizedBox(height: 20),
                        
                                          ButtonWidget(text: "Confirm",btnColor: isButtonDisabled?mainAppColor.withOpacity(0.6):mainAppColor,onPressed: (){showNoFundsAlertDialog(context);},),
                                        ],
                                      ),
                        
                                      SizedBox(height: 30),
                        
                        
                                    ],
                                  ),
                                ),
                              ],
                            ),
                        
                            SizedBox(height: 40,),
                        
                        
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15,bottom: 15,left: 20,right: fullWidth/15),
                                  decoration: BoxDecoration(
                                      color: whiteColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(28)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Current Credit',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 11,
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Text(
                                        '50 Credits',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: fullWidth/60,),
                                Container(
                                  padding: EdgeInsets.only(top: 15,bottom: 15,left: 20,right: fullWidth/15),
                                  decoration: BoxDecoration(
                                      color: whiteColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(28)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Players Selected',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(height: 1,),
                                      Text(
                                        '0/11 Players',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: fullWidth/60,),
                        
                        
                                Container(
                                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                  decoration: BoxDecoration(
                                      color: whiteColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(28)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            'CAPTAIN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                          ),
                        
                                        ],
                                      ),
                        
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                        
                                          SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: Image.asset("assets/main_images/team_player.png"),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(
                                            "Brandon Point",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: whiteColor.withOpacity(0.6),
                                            ),
                                          ),
                        
                                        ],
                                      ),
                        
                                    ],
                                  ),
                                ),
                                SizedBox(width: fullWidth/60,),
                        
                        
                                Container(
                                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                  decoration: BoxDecoration(
                                      color: whiteColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(28)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: Colors.deepPurple,
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            'VOICE CAPTAIN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                          ),
                        
                                        ],
                                      ),
                        
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                        
                                          SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: Image.asset("assets/main_images/team_player.png"),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(
                                            "Brandon Point",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: whiteColor.withOpacity(0.6),
                                            ),
                                          ),
                        
                                        ],
                                      ),
                        
                                    ],
                                  ),
                                ),
                        
                        
                        
                              ],
                            ),
                        
                            SizedBox(height: 30,),
                        
                            LinedTittle(tittle: "Select Player for the contest"),
                        
                            SizedBox(height: 30,),
                        
                            Row(
                              children: [
                        
                                Container(
                                  height: 40,
                                  width: fullWidth/4.1,
                                  decoration: BoxDecoration(
                                    color: blackColor.withOpacity(.04),
                                    borderRadius: BorderRadius.circular(10),
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
                                        fillColor: blackColor.withOpacity(.5),
                                        filled: true,
                                        suffixStyle: const TextStyle(
                                          color: blackColor,
                                        ),
                                        prefixIcon: SvgPicture.asset(
                                          "assets/main_icons/search.svg",
                                        ),
                                        prefixIconConstraints: const BoxConstraints(
                                          minHeight: 10,
                                          minWidth: 55,
                                        ),
                                        suffixIconConstraints: const BoxConstraints(
                                          minHeight: 10,
                                          minWidth: 55,
                                        ),
                                        hintText: "Type to search...",
                                        hintStyle: TextStyle(
                                          color: Color(0xFFA4A4A4),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
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
                        
                                SizedBox(width: 20,),
                        
                                Container(
                                  width: fullWidth/4.1,
                                  // margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: blackColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(15),
                                    // border: Border.all(color: Colors.grey.shade300,width: 0.2)
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                        
                                      Text(
                                        "All Positions",
                                        style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                        
                                      Icon(Icons.arrow_drop_down_outlined,color: whiteColor,size: 12,)
                        
                                    ],
                                  ),
                                ),
                        
                                SizedBox(width: 20,),
                        
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: mainAppColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.search_outlined,color: whiteColor,size: 18,),
                                )
                        
                        
                              ],
                            ),
                        
                            SizedBox(height: 20,),
                        
                            TeamPlayersTable(
                              headingList: headingList,
                              valuesList: valuesList,
                              isFirstBig: false,
                            ),
                        
                          ],
                        ),
                      ),
                    ),


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
  int currentItem = 2;


  List listOfEvents = ["Ongoing","Asia Cup’23","cpl’23","ashes series","ashes series"];
  int currentEvent = 0;


  List<String> headingList = [
    "Players", "Teams", "Nationality", "Position","Point","Credit","Add Player","C-VC"];

  List<List<String>> valuesList = [
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","green"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","black"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","purple"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","red"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","green"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","black"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","black"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","pink","black"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10","black","black"],



  ];



  Widget _buildInputCard(String label, TextEditingController controller,double width,double height) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 10,),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.white, fontSize: 18),
            decoration: InputDecoration(border: InputBorder.none),
            onChanged: (value) {
              setState(() {}); // Update button state dynamically
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDisplayCard(String label, String value,double width,double height) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(right: 12,left: 12,bottom: 26,top: 14),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 10,),

          Text(value, style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }


  /// Function to show the "No Funds" alert dialog
  void showNoFundsAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          elevation: 1,
          content: Column(
            mainAxisSize: MainAxisSize.min, // Minimize the size of the column
            children: [
              SizedBox(height: 50,),
              SizedBox(
                height: 59,
                width: 83,
                child: Image.asset("assets/main_images/wallet_nobalance.png")
              ),
              SizedBox(height: 50,),

              Text('No Funds',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,),),
              Text('Please add some funds to your\naccount',textAlign: TextAlign.center,style: TextStyle(fontSize: 11,color: whiteColor.withOpacity(0.6))),
              SizedBox(height: 20), // Add some spacing
              ButtonWidget(text: "Make Payment",onPressed: (){},),

            ],
          ),
        );
      },
    );
  }



}








