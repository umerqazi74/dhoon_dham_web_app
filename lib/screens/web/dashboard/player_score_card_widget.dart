import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class PlayerScoreCardWidget extends StatelessWidget {
  const PlayerScoreCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 105,
      padding: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          border: Border.all(color: whiteColor.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(16),
          color: blackColor.withOpacity(0.4)

      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 12,bottom: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1-81",style: TextStyle(color: whiteColor,fontSize: 20,fontWeight: FontWeight.w900),),
                    Container(
                        margin: EdgeInsets.only(top: 5,left: 5),
                        child: Text("11.1",style: TextStyle(color: whiteColor.withOpacity(0.4),fontSize: 10,fontWeight: FontWeight.w500),)),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("S Gill",style: TextStyle(color: whiteColor.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w500),),
                    Text("b Wellalage",style: TextStyle(color: whiteColor.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w500),),
                  ],
                ),

              ],
            ),
          ),

          SizedBox(

            // width:50,
            child: Image.asset(
              "assets/main_images/player_profile.png",
              height: 104,
              // width: 40,
            ),
          ),

        ],
      ),
    );
  }
}
