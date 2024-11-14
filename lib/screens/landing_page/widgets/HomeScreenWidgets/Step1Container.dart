import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
import '../../../../resources/string/common_string.dart';
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
        child: Row(
          children: [
            Expanded(
                child: Image.asset('${CommonString.appImg}img3.png')),
            SizedBox(
              width: context.width * 0.05,
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Step 1',
                      style: TextSizeTheme.Step2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Browse Services',
                      style: TextSizeTheme.heading2,
                    ),
                    Text(
                      'Our platform offers a broad range of services. Easily navigate through our categories or use the search bar to pinpoint the exact service you need. Each category is thoughtfully organized, allowing you to discover top-rated professionals in seconds—no more scrolling endlessly or making calls to find reliable help.',
                      style: TextSizeTheme.heading3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: context.width * 0.17,
                      child: ButtonWidget(
                        text: 'Download App',
                        borderColor: AppColor.whiteColor,
                        InnerColor: AppColor.mainColorOrange,
                        textColor: TextSizeTheme.ButtonWhite,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}