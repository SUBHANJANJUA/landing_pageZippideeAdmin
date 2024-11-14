import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
import '../../../../resources/string/common_string.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.profileName,
    required this.profileSubName,
    required this.profileText,
  });

  final String profileName;
  final String profileSubName;
  final String profileText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        color: AppColor.bgContainerGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.width * 0.02),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    width: 65,
                    height: 65,
                    child: Image.asset('${CommonString.appImg}dp.png')),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileName,
                      style: TextSizeTheme.ProfileName,
                    ),
                    Text(
                      profileSubName,
                      style: TextSizeTheme.ProfileSubName,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              profileText,
              style: TextSizeTheme.ProfileText,
            )
          ],
        ),
      ),
    );
  }
}