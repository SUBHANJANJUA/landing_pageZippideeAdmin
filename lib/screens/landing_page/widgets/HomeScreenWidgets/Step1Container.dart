import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
import '../../../../resources/responsive/Responsive.dart';
import '../../../../resources/string/common_string.dart';
import '../commonWidgets/DownloadAppButton.dart';
import '../commonWidgets/buttonContainer.dart';

class Step1Container extends StatelessWidget {
  const Step1Container({
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
        child:  Responsive.isMobile(context) ?

        //For  Mobile View
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 42,
                ),
                Text( textAlign: TextAlign.center,
                  'Step 1',
                  style: TextSizeThemeMobile.Step1,
                ),
                SizedBox(
                  height: 20,
                ),
                Text( textAlign: TextAlign.center,
                  'Browse Services',
                  style: TextSizeThemeMobile.heading2,
                ),SizedBox(
                  height: 5,
                ),
                Text( textAlign: TextAlign.center,
                  'Our platform offers a broad range of services. Easily navigate through our categories or use the search bar to pinpoint the exact service you need. Each category is thoughtfully organized, allowing you to discover top-rated professionals in seconds—no more scrolling endlessly or making calls to find reliable help.',
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

            Image.asset('${CommonString.appImg}img3.png'),
            SizedBox(
              height: 25,
            ),
          ],
        ):
            // For Chrome View
        Row(
          children: [
            Expanded(
                child: Image.asset('${CommonString.appImg}img3.png', height: context.width*0.3,)),
            SizedBox(
              width: context.width * 0.05,
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Step 1',
                      style: TextSizeThemeChrome.Step2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Browse Services',
                      style: TextSizeThemeChrome.heading2,
                    ),
                    Text(
                      'Our platform offers a broad range of services. Easily navigate through our categories or use the search bar to pinpoint the exact service you need. Each category is thoughtfully organized, allowing you to discover top-rated professionals in seconds—no more scrolling endlessly or making calls to find reliable help.',
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
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
