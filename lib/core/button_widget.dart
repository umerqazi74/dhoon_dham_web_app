import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'consts.dart';

//button widget...
class ButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final double width;
  final double height;
  final double elevation;
  final double fontSize;
  final Color btnColor;
  final Color textColor;
  final Color borderColor, disabledColor;
  final double borderRadius;
  final double padding;
  final FontWeight fontWeight;
  final double borderWidth;
  final bool isShowIcon, isIconStart;
  final String icon;
  final bool isDisable;

  const ButtonWidget({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.height = 56,
    this.elevation = 0,
    this.fontSize = 16,
    this.onPressed,
    this.btnColor = buttonColor,
    this.textColor = whiteColor,
    this.borderColor = buttonColor,
    this.borderRadius = 12,
    this.padding = 0,
    this.fontWeight = FontWeight.w600,
    this.borderWidth = 1,
    this.isShowIcon = false,
    this.icon = "",
    this.disabledColor = whiteColor,
    this.isDisable = false,
    this.isIconStart = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        height: height,
        minWidth: width,
        elevation: elevation,
        color: btnColor,
        disabledColor: disabledColor,
        padding: EdgeInsets.all(padding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (isIconStart)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    if (isShowIcon)
                      SvgPicture.asset(
                        icon,
                        colorFilter: ColorFilter.mode(
                          textColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    if (isShowIcon) const SizedBox(width: 9),
                  ],
                ),
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  overflow: TextOverflow.ellipsis,
                  // letterSpacing: -0.3,
                ),
              ),
              if (isIconStart == false)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    if (isShowIcon) const SizedBox(width: 9),
                    if (isShowIcon)
                      SvgPicture.asset(
                        icon,
                        colorFilter: ColorFilter.mode(
                          textColor,
                          BlendMode.srcIn,
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
