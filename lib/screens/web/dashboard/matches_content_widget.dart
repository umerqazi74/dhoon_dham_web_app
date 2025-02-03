import 'package:dhan_dhoom_web/screens/web/dashboard/player_score_card_widget.dart';
import 'package:dhan_dhoom_web/screens/web/dashboard/team_score_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/consts.dart';
import '../../../core/lined_tittle.dart';
import 'matches_points_table.dart';

class MatchesContentWidget extends StatefulWidget {
  const MatchesContentWidget({super.key});

  @override
  State<MatchesContentWidget> createState() => _MatchesContentWidgetState();
}

class _MatchesContentWidgetState extends State<MatchesContentWidget> {

  TextEditingController mySearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(dp, 0, dp, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            SizedBox(height: 10),


            Row(
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
                      controller: mySearchController,
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
                  padding: EdgeInsets.only(top: 9,bottom: 9,left: 25,right: 25),
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
            Stack(
              // alignment: Alignment.bottomCenter,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Welcome! Mr Jackson",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child:LinedTittle(tittle: "Today's Match")
                ),
                Container(
                  height: 240,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 120),
                  padding: EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                      AssetImage("assets/start_icons/bg.png"),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Image.asset(
                          "assets/main_images/ipl.png",
                          height: 60,
                          width: 90,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/main_images/sl.png",
                            height: 60,
                            width: 70,
                          ),
                          Image.asset(
                            "assets/main_images/vs.png",
                            height: 60,
                            width: 70,
                          ),
                          Image.asset(
                            "assets/main_images/ban.png",
                            height: 80,
                            width: 80,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Image.asset(
                          "assets/main_images/ipl1.png",
                          height: 60,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Image.asset(
                    "assets/main_images/p2.png",
                    height: 400,
                  ),
                ),
                Positioned(
                  right: 190,
                  top: 65,
                  child: Image.asset(
                    "assets/main_images/p1.png",
                    height: 320,
                  ),
                ),
                Positioned(
                  right: 140,
                  top: 200,
                  child: Image.asset(
                    "assets/main_images/vs1.png",
                    height: 70,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: listOfEvents.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            currentEvent = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                          decoration: BoxDecoration(
                              color: currentEvent == index? mainAppColor.withOpacity(0.2):null,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text(listOfEvents[index],style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            SizedBox(height: 10,),
            SizedBox(
              height: 125,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(right: 20),
                      child: TeamScoreCardWidget(isLast: index==2?true:false,)
                  );
                },

              ),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),
                  decoration: BoxDecoration(
                      color: mainAppColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Most Used Players",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.w500),),
                ),

                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )

              ],
            ),


            SizedBox(height: 20,),

            SizedBox(
              height: 106,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(right: 20),
                      child: PlayerScoreCardWidget());
                },

              ),
            ),


            SizedBox(height: 60,),
            Center(
              child: Text(
                "+ Add Player",
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 50,),

            LinedTittle(tittle: "History"),

            SizedBox(height: 30,),


            Center(child: MatchesPointsTable(headingList: headingList,valuesList: valuesList, isFirstBig: false,)),

            SizedBox(height: 20,),

            Container(
              margin: EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Container for "1"

                  Text(
                    "<<",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 12),
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 0.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Spacer for "<< 1 of 3 >>"
                  SizedBox(width: 12),
                  Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                  // Spacer for "10/pages"
                  SizedBox(width: 12),

                  Text(
                    ">>",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),


                  // Container for "10/pages"
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 0.5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),

                    child: Text(
                      "10/pages",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }



  List listOfEvents = ["Ongoing","Asia Cup’23","cpl’23","ashes series","ashes series"];
  int currentEvent = 0;


  List<String> headingList = [
    "Match", "Contest", "Entry Amount", "Winnings", "Date"];

  List<List<String>> valuesList = [
    ["assets/main_images/match.png", "Loss", "\$200", "Win", "2/14/2024"],
    ["assets/main_images/match.png", "Loss", "\$200", "Win", "2/14/2024"],
    ["assets/main_images/match.png", "Loss", "\$200", "Win", "2/14/2024"],
    ["assets/main_images/match.png", "Loss", "\$200", "Win", "2/14/2024"],
    ["assets/main_images/match.png", "Loss", "\$200", "Win", "2/14/2024"],
    ["assets/main_images/match.png", "Loss", "\$200", "Win", "2/14/2024"],

  ];


}
