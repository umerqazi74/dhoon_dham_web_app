import 'package:flutter/material.dart';

import '../../../core/button_widget.dart';
import '../../../core/consts.dart';
import '../common_widgets.dart';
class SecurityWidget extends StatefulWidget {
  const SecurityWidget({super.key});

  @override
  State<SecurityWidget> createState() => _SecurityWidgetState();
}

class _SecurityWidgetState extends State<SecurityWidget> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: fullWidth/70,top: 8,right: fullWidth/70,bottom: 8),
      width: fullWidth/2,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Security",
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: whiteColor.withOpacity(.01),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: whiteColor.withOpacity(.08),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.edit_note_outlined,color: whiteColor,size: 13,),
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 30,),

          Text(
            "Password",
            style: TextStyle(
              color: whiteColor.withOpacity(0.5),
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10,),

          Text(
            "Lorem Ipsum is simply dumy text of the printing.",
            style: TextStyle(
              color: whiteColor.withOpacity(0.5),
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Old Password",
                    style: TextStyle(
                      color: whiteColor.withOpacity(0.5),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(
                      width: fullWidth/2.14,
                      child: LinedTextField())

                ],
              ),


            ],
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New Password",
                    style: TextStyle(
                      color: whiteColor.withOpacity(0.5),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(
                      width: fullWidth/5,
                      child: LinedTextField())

                ],
              ),

              SizedBox(width: 20,),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      color: whiteColor.withOpacity(0.5),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(
                      width: fullWidth/5,
                      child: LinedTextField())

                ],
              ),
            ],
          ),


          SizedBox(height: 30,),
          Text(
            "To ensure your account is well protected, please use 8 or more characters with a mix of letters, \nnumbers & symbols.",
            style: TextStyle(
              color: whiteColor.withOpacity(0.5),
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                  width: 130,
                  height: 40,
                  child: ButtonWidget(text: "Cancel",onPressed: (){},fontSize: 12,btnColor: Colors.transparent,borderColor: whiteColor,)
              ),
              SizedBox(width: 10,),
              SizedBox(
                  width: 160,
                  height: 40,
                  child: ButtonWidget(text: "Save Changes",onPressed: (){},fontSize: 12,)
              ),


            ],
          )

        ],
      ),
    );

  }
}
