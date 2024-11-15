import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidgetChrome extends StatelessWidget {
  const ButtonWidgetChrome({
    super.key,
    required this.text,
    this.icon,
    required this.borderColor,
    required this.InnerColor,
    required this.textColor,
  });

  final String text;
  final Widget? icon;
  final Color borderColor;
  final Color InnerColor;
  final TextStyle textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: InnerColor,
          border: Border.all(
            color: borderColor,
          )),
      child: Padding(
        padding: EdgeInsets.all(context.width * 0.01),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon == null
                ? SizedBox.shrink()
                : SizedBox(width: 35, height: 38, child: icon),
            SizedBox(
              width: 25,
            ),
            Expanded(
                child: Text(
                  text,
                  style: textColor,
                  overflow: TextOverflow.visible,
                  // Allows text to wrap if necessary
                  softWrap: true, // Enables text wrapping
                )),
          ],
        ),
      ),
    );
  }
}

class ButtonWidgetMobile extends StatelessWidget {
  const ButtonWidgetMobile({
    super.key,
    required this.text,
    this.icon,
    required this.borderColor,
    required this.InnerColor,
    required this.textColor,
  });

  final String text;
  final Widget? icon;
  final Color borderColor;
  final Color InnerColor;
  final TextStyle textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: InnerColor,
          border: Border.all(
            color: borderColor,
          )),
      child: Padding(
        padding: EdgeInsets.all(23),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon == null
                ? SizedBox.shrink()
                : Row(
              children: [
                SizedBox(width: 35, height: 38, child: icon),SizedBox(
                  width: 5,
                ),
              ],
            ),

            Expanded(
                child: Text(
                  text,
                  style: textColor,
                  overflow: TextOverflow.visible,
                  // Allows text to wrap if necessary
                  softWrap: true, // Enables text wrapping
                )),
          ],
        ),
      ),
    );
  }
}