import 'package:flutter/material.dart';

class OMDBTxtWidget extends StatelessWidget {
  final String? title;
  final String? type;
  final Color txtColor;
  final double? fontSize;
  final bool isOverflow;
  final bool isMaxLines;
  final int maxLine;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;

  const OMDBTxtWidget({
    Key? key,
    required this.title,
    required this.fontSize,
    this.type = "B1",
    this.isOverflow = false,
    required this.txtColor,
    this.isMaxLines = false,
    this.maxLine = 3,
    this.textDecoration,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      overflow: isOverflow ? TextOverflow.ellipsis : null,
      textScaleFactor: 1.0,
      maxLines: isMaxLines ? maxLine : null,
      style: TextStyle(
        color: txtColor,
        fontSize: fontSize,
        decoration: textDecoration,
        fontWeight: fontWeight,
      ),
    );
  }
}