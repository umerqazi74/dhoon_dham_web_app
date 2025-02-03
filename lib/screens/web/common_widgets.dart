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
