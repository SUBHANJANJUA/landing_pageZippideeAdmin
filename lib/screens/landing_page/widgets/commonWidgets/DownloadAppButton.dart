import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';

class DownloadAppButton extends StatelessWidget {
  const DownloadAppButton({
    super.key,
    required this.text,
    this.icon,
    required this.border,

  });
  final String text;
  final Widget? icon;
  final bool border;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: border?AppColor.whiteColor: AppColor.mainColorOrange,
          border: Border.all(
            color:AppColor.mainColorOrange,
          )),
      child: Padding(
        padding: EdgeInsets.all(20),
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
                child: Text( textAlign: TextAlign.center,
                  text,
                  style:border?TextSizeThemeMobile.ButtonBlack: TextSizeThemeMobile.ButtonWhite,

                )),
          ],
        ),
      ),
    );
  }
}

