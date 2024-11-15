import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';

class DownloadAppButton extends StatelessWidget {
  const DownloadAppButton({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.mainColorOrange,
          border: Border.all(
            color: AppColor.whiteColor,
          )),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Expanded(
                child: Text( textAlign: TextAlign.center,
                  'Download App',
                  style: TextSizeThemeMobile.ButtonWhite,

                )),
          ],
        ),
      ),
    );
  }
}

