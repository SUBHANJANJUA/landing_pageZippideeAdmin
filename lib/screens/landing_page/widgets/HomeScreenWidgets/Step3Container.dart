import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zippidee_landing_page/screens/landing_page/widgets/commonWidgets/DownloadAppButton.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
import '../../../../resources/responsive/Responsive.dart';
import '../../../../resources/string/common_string.dart';
import '../commonWidgets/buttonContainer.dart';



class Step3Container extends StatelessWidget {
  const Step3Container({
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
        child: Responsive.isMobile(context) ?
        //for Mobile View
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Step 3', textAlign: TextAlign.center,
                  style: TextSizeThemeMobile.Step1,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Get It Done', textAlign: TextAlign.center,
                  style: TextSizeThemeMobile.heading2,
                ),SizedBox(
                  height: 5,
                ),
                Text( textAlign: TextAlign.center,
                  'After scheduling, sit back and let Zippidee handle the rest. A trusted professional will arrive at your doorstep at the scheduled time, fully prepared to deliver quality service. With Zippidee, getting things done is as simple as booking it and watching the work happen, hassle-free.',
                  style: TextSizeThemeMobile.heading3,
                ),
                SizedBox(
                  height: 25,
                ),
                DownloadAppButton(text: 'Download App',border: false,),
              ],
            ),

            SizedBox(
              height: 25,
            ),
            Image.asset('${CommonString.appImg}img5.png'),
            SizedBox(
              height: 25,
            ),
          ],
        ) :

            //For Chrome view
        Row(
          children: [
            Expanded(
                child: Image.asset('${CommonString.appImg}img5.png', height: context.width*0.3,)),
            SizedBox(
              width: context.width * 0.05,
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Step 3',
                      style: TextSizeThemeChrome.Step2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Get It Done',
                      style: TextSizeThemeChrome.heading2,
                    ),
                    Text(
                      'After scheduling, sit back and let Zippidee handle the rest. A trusted professional will arrive at your doorstep at the scheduled time, fully prepared to deliver quality service. With Zippidee, getting things done is as simple as booking it and watching the work happen, hassle-free.',
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
                  ],
                )),
          ],
        ),
      ),
    );
  }
}