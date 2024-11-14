import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
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
        child: Row(
          children: [
            Expanded(
                child: Image.asset('${CommonString.appImg}img5.png')),
            SizedBox(
              width: context.width * 0.05,
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Step 3',
                      style: TextSizeTheme.Step2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Get It Done',
                      style: TextSizeTheme.heading2,
                    ),
                    Text(
                      'After scheduling, sit back and let Zippidee handle the rest. A trusted professional will arrive at your doorstep at the scheduled time, fully prepared to deliver quality service. With Zippidee, getting things done is as simple as booking it and watching the work happen, hassle-free.',
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