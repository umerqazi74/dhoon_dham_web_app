import 'package:dhan_dhoom_web/core/consts.dart';
import 'package:dhan_dhoom_web/core/lined_tittle.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/player_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/side_notification_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/team_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/matches_content_widget.dart';
import 'package:dhan_dhoom_web/screens/web/fantacy/fantacy_screen.dart';
import 'package:dhan_dhoom_web/screens/web/leaderboard/leader_board_screen.dart';
import 'package:dhan_dhoom_web/screens/web/my_team/my_team_screen.dart';
import 'package:dhan_dhoom_web/screens/web/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/shades_widget.dart';
import '../settings/Settings_screen.dart';
import 'matches_points_table.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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


                    MatchesContentWidget(),
                    SideNotificationWidget()




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
  int currentItem = 0;



}







