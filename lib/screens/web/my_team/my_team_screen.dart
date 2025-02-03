import 'package:dhan_dhoom_web/core/clickable_widget.dart';
import 'package:dhan_dhoom_web/core/consts.dart';
import 'package:dhan_dhoom_web/core/lined_tittle.dart';
import 'package:dhan_dhoom_web/screens/web/common_widgets.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/dashboard_screen.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/player_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/side_notification_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/team_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/matches_content_widget.dart';
import 'package:dhan_dhoom_web/screens/web/fantacy/fantacy_screen.dart';
import 'package:dhan_dhoom_web/screens/web/my_team/team_players_table_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/shades_widget.dart';
import '../fantacy/context/context_screen.dart';
import '../leaderboard/leader_board_screen.dart';
import '../settings/Settings_screen.dart';
import '../wallet/wallet_screen.dart';

class MyTeamScreen extends StatefulWidget {
   const MyTeamScreen({super.key});

  @override
  State<MyTeamScreen> createState() => _MyTeamScreenState();
}

class _MyTeamScreenState extends State<MyTeamScreen> {
  bool playerSelected = false;

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
                      height: fullHeight+fullHeight,
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

                    SizedBox(
                      width: fullWidth/1.19,
                        child :Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // SizedBox(height: 20,),

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

                              SizedBox(height: 20,),

                              Row(
                                children: [
                                  Text(
                                    "My Teams",
                                    style: TextStyle(
                                      color: Colors.grey.shade100,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  SizedBox(width: 30,),

                                  playerSelected==false?SizedBox() :InkWell(
                                    onTap: (){
                                      setState(() {
                                        playerSelected = false;
                                      });
                                    },
                                        child: Container(
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
                                            "Select Contest",
                                            style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),

                                          SizedBox(width: 10,),

                                          Icon(Icons.arrow_drop_down_outlined,color: whiteColor,size: 12,)

                                        ],),
                                        ),
                                      ),


                                ],
                              ),

                              SizedBox(height: 40,),

                              playerSelected? SizedBox() : InkWell(
                                onTap: (){{
                                  setState(() {
                                    playerSelected = true;
                                  });
                                }
    },
                                child: Container(
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
                                        "Select Contest",
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
                              ),


                              !playerSelected?SizedBox():
                              GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: fullWidth<800?2 : fullWidth<1200?3 : 4, // Number of items per row
                                  crossAxisSpacing: 5, // Horizontal spacing between items
                                  mainAxisSpacing: 10, // Vertical spacing between items
                                  childAspectRatio: 1,
                                  mainAxisExtent: 130, // Adjust based on your widget's aspect ratio
                                ),
                                itemCount: 8,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                      onTap: (){

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>  ContextScreen(),
                                            )
                                        );

                                      },
                                      child: PlayerScoreCardWidget());
                                },
                              ),

                              SizedBox(height: 50,),

                              LinedTittle(tittle: "View Player"),

                              SizedBox(height: 30,),

                              Row(
                                children: [

                                  SearchField(width: fullWidth/4.1,),

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
  int currentItem = 1;



  List<String> headingList = [
    "Players", "Teams", "Nationality", "Position","Point","Credit"];

  List<List<String>> valuesList = [
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],
    ["assets/main_images/team_player.png","Brandon\nPoint", "Indian", "Indian", "c", "40","10"],


  ];


}







