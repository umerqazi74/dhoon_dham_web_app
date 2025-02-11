import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/consts.dart';
import '../../../core/lined_tittle.dart';


class WalletSideNotificationWidget extends StatefulWidget {
  const WalletSideNotificationWidget({super.key});

  @override
  State<WalletSideNotificationWidget> createState() => _WalletSideNotificationWidgetState();
}

class _WalletSideNotificationWidgetState extends State<WalletSideNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return Container(
      height: fullHeight+300,
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

                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                  return Column(
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
                      Container(
                        height: 0.2,
                        color: whiteColor,
                      ),
                    ],
                  );
                },),


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
