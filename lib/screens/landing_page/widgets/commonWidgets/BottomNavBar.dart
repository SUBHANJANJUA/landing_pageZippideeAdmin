import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
import '../../../../resources/string/common_string.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
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
        padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.1,
            vertical: context.width * 0.04),
        child: Column(
          children: [
            Container(
              width: context.width * 0.8,
              decoration: BoxDecoration(
                color: AppColor.bgContainerbrown,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subscribe Newsletters',
                      style: TextSizeTheme.ftHeadingWhite,
                    ),
                    Container(
                      width: context.width * 0.4,
                      height: 72,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: context.width * 0.225,
                                height: 72,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter your email',
                                        border: InputBorder.none,
                                        // Removes the default border
                                        enabledBorder: InputBorder.none,
                                        // Removes the border when enabled
                                        focusedBorder: InputBorder.none,
                                        // Removes the border when focused
                                        errorBorder: InputBorder.none,
                                        // Removes the border when there is an error
                                        disabledBorder: InputBorder
                                            .none, // Removes the border when disabled
                                      ),
                                    ),
                                  ),
                                )),
                            Container(
                              width: 180,
                              decoration: BoxDecoration(
                                color: AppColor.mainColorOrange,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Center(
                                    child: Text(
                                      'Subcribe Now',
                                      style:
                                      TextSizeTheme.ButtonWhite.copyWith(
                                          fontWeight: FontWeight.w500),
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: context.width * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Home'),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    Text('Contact Us')
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('${CommonString.appImg}fbicon.svg'),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    SvgPicture.asset(
                        '${CommonString.appImg}twitericon.svg'),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    SvgPicture.asset(
                        '${CommonString.appImg}vimeoicon.svg'),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    SvgPicture.asset('${CommonString.appImg}yticon.svg'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: context.width * 0.05,
            ),
            Divider(),
            SizedBox(
              height: context.width * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('© 2019 Lift Media. All rights reserved.'),
                SizedBox(
                    width: 250,
                    height: 88,
                    child: Image.asset('${CommonString.appImg}logo.png')),
                Row(
                  children: [
                    Text('Terms of Service'),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    Text('Privacy Policy'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}