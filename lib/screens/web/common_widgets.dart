import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/consts.dart';
class LinedTextField extends StatelessWidget {
  const LinedTextField({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left: 12, top: 10,bottom: 8),
      height: 40,
      decoration: BoxDecoration(
        color: blackColor.withOpacity(.4),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: whiteColor.withOpacity(.5),
          width: 1,
        ),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
              child: SvgPicture.asset(
                "assets/main_icons/line.svg",
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width/6,
              child: TextFormField(
                // controller: mySearchController,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                autofocus: false,
                decoration: InputDecoration(
                  fillColor: blackColor.withOpacity(.1),
                  filled: true,
                  suffixStyle: const TextStyle(
                    color: blackColor,
                  ),

                  prefixIconConstraints: const BoxConstraints(
                    minHeight: 10,
                    minWidth: 55,
                  ),
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 10,
                    minWidth: 55,
                  ),

                  hintStyle: TextStyle(
                    color: Color(0xFFA4A4A4),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
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
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
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
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController? editingController;
  final double? width;
  final double? radius;
  final Color? color;
  final Color? borderClr;
  final Color? fillClr;
  final String? txt;
  final bool? isNotSearch;
  const CustomTextField({super.key, this.editingController, this.width, this.color, this.borderClr, this.txt, this.fillClr, this.radius, this.isNotSearch});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 40,
      width: width?? 200,
      decoration: BoxDecoration(
        color: color?? blackColor.withOpacity(.04),
        borderRadius: BorderRadius.circular(radius??10),
        border: Border.all(
          color: borderClr?? blackColor.withOpacity(.6),
          width: 1,
        ),
      ),
      child: Center(
        child: TextFormField(
          controller: editingController,
          style: TextStyle(
            color: whiteColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          autofocus: false,
          decoration: InputDecoration(
            fillColor: fillClr?? blackColor.withOpacity(.5),
            filled: true,
            suffixStyle: const TextStyle(
              color: blackColor,
            ),
            prefixIcon: isNotSearch==true? null:SvgPicture.asset(
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
            hintText: txt??"Type to search...",
            hintStyle: TextStyle(
              color: Color(0xFFA4A4A4),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius??10),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius??10),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius??10),
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
              borderRadius: BorderRadius.circular(radius??10),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius??10),
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
    );
  }
}

class WalletBalance extends StatelessWidget {
  const WalletBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}


class DropdownWidget extends StatefulWidget {
  final List<String> items;
  final Function(String value)? onChange;
  const DropdownWidget({super.key, required this.items, this.onChange});

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? selectedValue; // Variable to store the selected value

  // List of items for the dropdown
  late List<String> items = widget.items;

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 40,
      width: fullWidth / 4.1,
      padding: EdgeInsets.only(top: 12,bottom: 12,left: fullWidth / 100),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Dropdown Button
          DropdownButton<String>(
            value: selectedValue,
            hint: Text(
              "Select Contest",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
            icon: Container(margin: EdgeInsets.only(left: fullWidth / 7),child: Icon(Icons.arrow_drop_down_outlined, color: Colors.white, size: 12)),
            iconSize: 24,
            elevation: 16,
            dropdownColor: blackColor,
            style: TextStyle(color: whiteColor),
            underline: Container(), // Remove the default underline
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
              widget.onChange!(newValue!);
            },
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    color: whiteColor, // Text color for dropdown items
                    fontSize: 11,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}