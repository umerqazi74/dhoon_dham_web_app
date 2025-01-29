import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/consts.dart';
import '../../../core/lined_tittle.dart';
import 'matches_history_table.dart';

class SideNotificationWidget extends StatefulWidget {
   const SideNotificationWidget({super.key});

  @override
  State<SideNotificationWidget> createState() => _SideNotificationWidgetState();
}

class _SideNotificationWidgetState extends State<SideNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return Container(
      height: fullHeight+fullHeight+300,
      width: fullWidth/4,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black87,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 0.2,
                blurRadius: 1,
                offset: Offset(1, 0)
            )
          ]
      ),
      child: Column(
        children: [

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

          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(12),
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
            child: Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications_none,color: whiteColor,size: 18,),
                    SizedBox(width: 8,),
                    Text(
                      "Notification",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                  ],

                ),

                SizedBox(height: 10,),

                Container(
                  height: 0.2,
                  color: whiteColor,
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),

                    Text(
                      "System Update",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Id risus sapien amet eget bibendum erat turpis. Risus erat justo sed aliquam est sem. Fringilla nibh ut risus at massa ut rhoncus arcu. Interdum aliquam id nunc egestas aliquam elit.",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),

                Container(
                  height: 0.2,
                  color: whiteColor,
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),

                    Text(
                      "System Update",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Id risus sapien amet eget bibendum erat turpis. Risus erat justo sed aliquam est sem. Fringilla nibh ut risus at massa ut rhoncus arcu. Interdum aliquam id nunc egestas aliquam elit.",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),

                Container(
                  height: 0.2,
                  color: whiteColor,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),

                    Text(
                      "System Update",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Id risus sapien amet eget bibendum erat turpis. Risus erat justo sed aliquam est sem. Fringilla nibh ut risus at massa ut rhoncus arcu. Interdum aliquam id nunc egestas aliquam elit.",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),

                SizedBox(height: 10,),


                Container(
                  height: 0.2,
                  color: whiteColor,
                ),

                SizedBox(height: 20,),

                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),



              ],

            ),


          ),

          SizedBox(height: 30,),

          LinedTittle(tittle: "Leader board"),

          SizedBox(height: 40,),

          Center(child: MatchesHistoryTable(headingList: leaderHeadingList,valuesList: leaderValuesList, isFirstBig: true,)),

          SizedBox(height: 40,),

          Image.asset("assets/main_images/viewall_button.png"),

          SizedBox(height: 40,),


          LinedTittle(tittle: "Orange Cap Leaderboard"),


          Image.asset("assets/main_images/OrangeCAp.png"),

          SizedBox(height: 20,),

          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF4B2E9D), Color(0xFF8D2D7D)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Info Icon (Top Right)
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.info_outline, color: Colors.white, size: 14),
                ),
                SizedBox(height: 2),

                // Referral Text
                Text(
                  "Refer friends",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),

                // Coin & Reward Text
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "💰", // Bitcoin or Coin Icon
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "\$10 each!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3),

                // Referral Code
                Text(
                  "hGjfdk",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                SizedBox(height: 10),

                // Buttons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Share Button
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add share functionality
                      },
                      icon: Icon(Icons.share, color: Colors.black,size: 10,),
                      label: Text("Share Code",style: TextStyle(fontSize: 11),),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      ),
                    ),
                    SizedBox(width: 15),

                    // Copy Button
                    ElevatedButton.icon(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: "WkNgh"));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Code copied to clipboard!")),
                        );
                      },
                      icon: Icon(Icons.copy, color: Colors.black,size: 10,),
                      label: Text("Copy Code",style: TextStyle(fontSize: 11)),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  List<String> leaderHeadingList = [
    "Conest 11", "PTS", "Win", "POS"];

  List<List<String>> leaderValuesList = [
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],
    ["D capitals", "2", "50", "50"],

  ];
}
