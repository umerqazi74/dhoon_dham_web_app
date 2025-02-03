import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/consts.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText, labelText;
  final TextEditingController? myController;
  final String? Function(String?)? validator;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final AutovalidateMode autoValidateMode;
  final bool obscureText;
  final Function(String)? onFieldSubmitted;
  final String? suffixWidget;
  final Widget? suffixIcon;
  final Widget? prefixWidget;
  final int maxLines;
  final int? maxLength;
  final Function(String)? onChange;
  final String? iconImage;
  final List<TextInputFormatter>? inputFormatters;
  final bool isGiveBottomPadding;
  final bool isGiveTopPadding;
  final bool isSvg;
  final bool readOnly;
  final double fontSize;
  final FontWeight fontWeight;
  final double borderRadius;
  final double verticalPadding;
  final Color textColor, fillColor;
  final TextAlign textAlign;
  final bool isHintLight;

  const TextFormFieldWidget({
    super.key,
    this.hintText = '',
    this.labelText = '',
    this.myController,
    this.validator,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.suffixWidget,
    this.suffixIcon,
    this.maxLines = 1,
    this.onChange,
    this.maxLength,
    this.inputFormatters,
    this.isGiveBottomPadding = true,
    this.isGiveTopPadding = true,
    this.iconImage = '',
    this.isSvg = true,
    this.readOnly = false,
    this.prefixWidget,
    this.borderRadius = 8,
    this.verticalPadding = 18,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.textColor = whiteColor,
    this.textAlign = TextAlign.start,
    this.fillColor = Colors.transparent,
    this.isHintLight = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12, bottom: isGiveBottomPadding ? 16 : 16),
      child: TextFormField(
        readOnly: readOnly,
        obscureText: obscureText,
        controller: myController,
        validator: validator,
        maxLines: maxLines,
        maxLength: maxLength,
        textAlign: textAlign,
        inputFormatters: inputFormatters,
        onChanged: onChange,
        onFieldSubmitted: onFieldSubmitted,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        textInputAction: textInputAction,
        keyboardType: textInputType,
        autovalidateMode: autoValidateMode,
        autofocus: false,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          suffixText: suffixWidget,
          suffixStyle: const TextStyle(
            color: blackColor,
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixWidget,
          prefixIconConstraints: const BoxConstraints(
            minHeight: 10,
            minWidth: 55,
          ),
          suffixIconConstraints: const BoxConstraints(
            minHeight: 10,
            minWidth: 55,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(
            labelText,
            style: const TextStyle(
              color: Color(0xFF202023),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xFFF6F3EE).withOpacity(.60),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: whiteColor.withOpacity(.20),
              width: 3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: whiteColor.withOpacity(.20),
              width: 3,
            ),
          ),
          errorStyle: const TextStyle(
            color: alertColor,
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: whiteColor.withOpacity(.20),
              width: 3,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: whiteColor.withOpacity(.20),
              width: 3,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 0,
            vertical: verticalPadding,
          ),
        ),
      ),
    );
  }
}
