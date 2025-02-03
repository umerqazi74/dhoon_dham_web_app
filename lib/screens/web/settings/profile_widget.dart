import 'package:flutter/material.dart';

import '../../../core/button_widget.dart';
import '../../../core/consts.dart';
import '../common_widgets.dart';
class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 20,top: 8,right: 20,bottom: 8),
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
                "My Profile",
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
            "Personal information",
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "First Name",
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
                    "Last Name",
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

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Display Name",
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
                    "User Name",
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

          SizedBox(height: 50,),

          Text(
            "Contact information",
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
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
                    "Phone Number",
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

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
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
                    "Currency",
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
            "This account was created on 04 -  05  -  2024",
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
