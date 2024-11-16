import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zippidee_landing_page/screens/landing_page/widgets/commonWidgets/DownloadAppButton.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
import '../../../../resources/responsive/Responsive.dart';
import '../../../../resources/string/common_string.dart';
import '../commonWidgets/buttonContainer.dart';

class Step2Container extends StatelessWidget {
  const Step2Container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.bgContainerGrey,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
        child:
        Responsive.isMobile(context) ?
        //Mobile View
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text( textAlign: TextAlign.center,
                  'Step 2',
                  style: TextSizeThemeMobile.Step1,
                ),
                SizedBox(
                  height: 25,
                ),
                Text( textAlign: TextAlign.center,
                  'Book Instantly',
                  style: TextSizeThemeMobile.heading2,
                ),SizedBox(
                  height: 5,
                ),
                Text( textAlign: TextAlign.center,
                  'Once you ve found the service that fits your needs, booking it is quick and straightforward. Choose your preferred service, select a time that works best for you, and confirm your booking—all within a few taps. Zippidee makes scheduling stress-free by offering flexibility, so you can set appointments that fit into your busy life seamlessly. Skip the long waits and enjoy on-demand booking that adapts to your schedule.',
                  style: TextSizeThemeMobile.heading3,
                ),
                SizedBox(
                  height: 20,
                ),
                DownloadAppButton(text: 'Download App',border: false,),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Image.asset('${CommonString.appImg}img4.png'),
            SizedBox(
              height: 25,
            ),
          ],
        ):

            //Chrome View
        Row(
        children: [

        Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        Text(
        'Step 2',
        style: TextSizeThemeChrome.Step2,
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'Book Instantly',
        style: TextSizeThemeChrome.heading2,
      ),
      Text(
        'Once you ve found the service that fits your needs, booking it is quick and straightforward. Choose your preferred service, select a time that works best for you, and confirm your booking—all within a few taps. Zippidee makes scheduling stress-free by offering flexibility, so you can set appointments that fit into your busy life seamlessly. Skip the long waits and enjoy on-demand booking that adapts to your schedule.',
        style: TextSizeThemeChrome.heading3,
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: context.width * 0.17,
        child: ButtonWidgetChrome(
          text: 'Download App',
          borderColor: AppColor.whiteColor,
          InnerColor: AppColor.mainColorOrange,
          textColor: TextSizeThemeChrome.ButtonWhite,
        ),
      ),
        SizedBox(height: 25,),
      ],
    )),
    SizedBox(
    width: context.width * 0.05,
    ),
    Expanded(
    child: Image.asset('${CommonString.appImg}img4.png', height: context.width * 0.3,)),
    ],
    ),
      ),
    );
  }
}