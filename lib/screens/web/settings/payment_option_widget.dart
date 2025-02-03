import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../core/button_widget.dart';
import '../../../core/consts.dart';
import '../../../core/text_form_field_widget.dart';

class PaymentOptionWidget extends StatefulWidget {
  const PaymentOptionWidget({super.key});

  @override
  State<PaymentOptionWidget> createState() => _PaymentOptionWidgetState();
}

class _PaymentOptionWidgetState extends State<PaymentOptionWidget> {
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
                "Payment Option",
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Credit Card",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Lorem Ipsum is simply dumy text of the printing.",
                    style: TextStyle(
                      color: whiteColor.withOpacity(0.5),
                      fontSize: 10,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),


              InkWell(
                onTap: (){
                  showAddCardDialogueFunction(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(.01),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.grey.shade600,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add,color: Colors.grey.shade600,size: 18,),
                      SizedBox(width: 5,),

                      Text(
                        "Add",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 30,),
          Row(
            children: [
              Container(
                height: 0.5,
                width: fullWidth/2.14,
                color: Colors.grey.shade700,
              )
            ],
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Credit Card",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Lorem Ipsum is simply dumy text of the printing.",
                    style: TextStyle(
                      color: whiteColor.withOpacity(0.5),
                      fontSize: 10,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              InkWell(
                onTap: (){
                  showAddCardDialogueFunction(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(.01),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.grey.shade600,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add,color: Colors.grey.shade600,size: 18,),
                      SizedBox(width: 5,),

                      Text(
                        "Add",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 30,),
          Row(
            children: [
              Container(
                height: 0.5,
                width: fullWidth/2.14,
                color: Colors.grey.shade700,
              )
            ],
          ),


        ],
      ),
    );
  }

  void showAddCardDialogueFunction(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          elevation: 1,
          content: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Minimize the size of the column
              children: [
                // SizedBox(width: 300,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add New Card',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),
                    Icon(Icons.clear,color: whiteColor,size: 20,)
                  ],
                ),
                SizedBox(height: 30,),
                Container(width: 450,height: 0.3,color: Colors.grey.shade600,),
                SizedBox(height: 50,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Number",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 10,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      child: TextFormFieldWidget(
                        hintText: "1234 56789 2353",
                        isGiveBottomPadding: false,
                        suffixIcon:
                        SvgPicture.asset("assets/main_icons/visa.svg"),
                        prefixWidget: SvgPicture.asset(
                            "assets/main_icons/line.svg"),
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Valid",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 10,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormFieldWidget(
                            hintText: "   02/02/2022",
                            isGiveBottomPadding: false,
                            suffixIcon:
                            SvgPicture.asset("assets/main_icons/calender.svg"),
                            prefixWidget: SizedBox(),
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "CVV",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 10,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormFieldWidget(
                            hintText: "   . . .",
                            isGiveBottomPadding: false,
                            suffixIcon:
                            SvgPicture.asset("assets/main_icons/info.svg"),
                            prefixWidget: SizedBox(),
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 10,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      child: TextFormFieldWidget(
                        hintText: "   Card Holder",
                        textColor: Colors.white.withOpacity(0.5),
                        isGiveBottomPadding: false,
                        textInputAction: TextInputAction.done,
                        prefixWidget: SizedBox(),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20), // Add some spacing
                ButtonWidget(text: "Proceed",onPressed: (){proceedFunction();},),

              ],
            ),
          ),
        );
      },
    );
  }


  void showProceedCardDialogueFunction(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          elevation: 1,
          content: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // Minimize the size of the column
                children: [
                  // SizedBox(width: 300,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank Details',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),
                      Icon(Icons.clear,color: whiteColor,size: 20,)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(width: 450,height: 0.3,color: Colors.grey.shade600,),
                  SizedBox(height: 50,),

                  SizedBox(
                    width: 450,
                    child: TextFormFieldWidget(
                      hintText: "   Bank Name",
                      isGiveBottomPadding: false,
                      suffixIcon: SvgPicture.asset(
                          "assets/main_icons/down.svg"),
                      textInputAction: TextInputAction.done,
                      prefixWidget: SizedBox(),
                    ),
                  ),


                  SizedBox(
                    width: 450,
                    child: TextFormFieldWidget(
                      hintText: "   Account Number",
                      textColor: Colors.white.withOpacity(0.5),
                      isGiveBottomPadding: false,
                      textInputAction: TextInputAction.done,
                      prefixWidget: SizedBox(),
                    ),
                  ),

                  SizedBox(
                    width: 450,
                    child: TextFormFieldWidget(
                      hintText: "   Re-enter Account Number",
                      isGiveBottomPadding: false,
                      suffixIcon: SvgPicture.asset(
                          "assets/main_icons/reEnter.svg"),
                      textInputAction: TextInputAction.done,
                      prefixWidget: SizedBox(),
                    ),
                  ),

                  SizedBox(
                    width: 450,
                    child: TextFormFieldWidget(
                      hintText: "   IFSC Code*",
                      textColor: Colors.white.withOpacity(0.5),
                      isGiveBottomPadding: false,
                      textInputAction: TextInputAction.done,
                      prefixWidget: SizedBox(),
                    ),
                  ),

                  SizedBox(height: 20), // Add some spacing
                  ButtonWidget(text: "Proceed",onPressed: (){Navigator.of(context).pop();},),
                  SizedBox(height: 30), // Add some spacing

                  Text('Bank Details',style: TextStyle(color: whiteColor,fontWeight: FontWeight.bold,fontSize: 14),),
                  SizedBox(height: 10), // Add some spacing
                  Container(width: 450,height: 0.5,color: Colors.grey.shade100,),
                  SizedBox(height: 10), // Add some spacing
                  Text('Please cross-check the destination address. Withdrawals to \nSmart Contract Addresses, payments or participation in ICOs/\nAirdrops are not supported and will be lost forever. \nWithdrawal requests cannot be cancelled after submission.',
                    style: TextStyle(color: whiteColor.withOpacity(0.5),fontWeight: FontWeight.bold,fontSize: 13),),




                ],
              ),
            ),
          ),
        );
      },
    );
  }




  proceedFunction(){
    Navigator.of(context).pop();
    showProceedCardDialogueFunction(context);
  }

}
