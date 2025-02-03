import 'package:dhan_dhoom_web/core/button_widget.dart';
import 'package:dhan_dhoom_web/core/consts.dart';
import 'package:dhan_dhoom_web/core/lined_tittle.dart';
import 'package:dhan_dhoom_web/screens/web/common_widgets.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/player_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/side_notification_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/team_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/matches_content_widget.dart';
import 'package:dhan_dhoom_web/screens/web/leaderboard/leader_board_screen.dart';
import 'package:dhan_dhoom_web/screens/web/my_team/my_team_screen.dart';
import 'package:dhan_dhoom_web/screens/web/settings/payment_option_widget.dart';
import 'package:dhan_dhoom_web/screens/web/settings/profile_widget.dart';
import 'package:dhan_dhoom_web/screens/web/settings/security_widget.dart';
import 'package:dhan_dhoom_web/screens/web/wallet/wallet_side_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../core/shades_widget.dart';
import '../../../core/text_form_field_widget.dart';
import '../dashboard/dashboard_screen.dart';
import '../dashboard/matches_points_table.dart';
import '../fantacy/fantacy_screen.dart';
import '../wallet/wallet_screen.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    TextEditingController myController = TextEditingController();

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

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.5),
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.grey.shade300,width: 0.2)

                                      ),
                                      child: Icon(Icons.notifications_none,color: Colors.grey.shade200,size: 16,),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(30),
                                        // border: Border.all(color: Colors.grey.shade300,width: 0.1)


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
                                              color: Colors.grey.shade200,
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

                              ],
                            ),

                            SizedBox(height: 20,),
                            Text(
                              "Settings",
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 10,),



                            Row(
                              children: [

                                Container(
                                  padding: EdgeInsets.only(left: 16,top: 16,right: 16,bottom: 8),
                                  width: fullWidth/4.7,
                                  height: fullHeight+50,
                                  decoration: BoxDecoration(
                                    color: whiteColor.withOpacity(.05),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: whiteColor.withOpacity(.08),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Column(
                                        children: [
                                          SizedBox(height: 10,),
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundImage: AssetImage("assets/main_images/profile_picture.png"),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            "Allie Grater",
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            "alliegrater1234@",
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 10,),


                                          ListView.builder(
                                            physics: NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 3,
                                            itemBuilder: (BuildContext context, int index) {
                                            return Column(
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      currentSettingItem = index;
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      color: currentSettingItem==index?blackColor.withOpacity(.5):null,
                                                      borderRadius: BorderRadius.circular(6),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(index==0?Icons.perm_identity_rounded:index==1?Icons.security_sharp:Icons.payment,color:currentSettingItem==index?whiteColor:whiteColor.withOpacity(.5),size: 12,),
                                                        SizedBox(width: 10,),
                                                        Text(
                                                          index==0?"My Profile":index==1?"Security":"Payment Option",
                                                          style: TextStyle(
                                                            color: currentSettingItem==index?whiteColor:whiteColor.withOpacity(.5),
                                                            fontSize: 10,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10,),
                                              ],
                                            );
                                          },),


                                        ],
                                      ),

                                      InkWell(
                                        onTap: (){
                                          logOutAlert(context);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: blackColor.withOpacity(.5),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.wallet,color: whiteColor.withOpacity(0.5),size: 16,),
                                              SizedBox(width: 10,),
                                              Text(
                                                "Log Out",
                                                style: TextStyle(
                                                  color: whiteColor.withOpacity(0.5),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),


                                SizedBox(width: 30,),

                                settingWidgets[currentSettingItem],



                              ],
                            )



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

  int currentSettingItem = 0;

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
  int currentItem = 5;


  List<Widget> settingWidgets = [ProfileWidget(),SecurityWidget(),PaymentOptionWidget()];


  void logOutAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          elevation: 1,
          content: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Minimize the size of the column
              children: [
                SizedBox(height: 50,width: 250,),

                // SizedBox(height: 50,),

                Text('Are you sure?',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,),),
                SizedBox(height: 10), // Add some spacing
                Text('Are you sure you want to logout?',textAlign: TextAlign.center,style: TextStyle(fontSize: 11,color: whiteColor.withOpacity(0.6))),
                SizedBox(height: 30), // Add some spacing
                ButtonWidget(text: "Log Out",onPressed: (){},height: 50,),
                SizedBox(height: 10), // Add some spacing
                ButtonWidget(text: "Cancel",onPressed: (){},btnColor: whiteColor.withOpacity(0.05),borderColor: whiteColor.withOpacity(0.08),height: 50,),

              ],
            ),
          ),
        );
      },
    );
  }

}







