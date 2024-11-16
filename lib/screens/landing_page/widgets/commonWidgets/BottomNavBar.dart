import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zippidee_landing_page/screens/Privacy_policy/privacy_policy.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';
import '../../../../resources/responsive/Responsive.dart';
import '../../../../resources/string/common_string.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ?
        //for mobile view
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.bgContainerGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    width: context.width * 0.9,
                    decoration: BoxDecoration(
                      color: AppColor.bgContainerbrown,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(context.width * 0.05),
                      child: Column(
                        children: [
                          Text(
                            'Subscribe Newsletters',
                            style: TextSizeThemeMobile.ftHeadingWhite,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: context.width * 0.85,
                            //height: 72,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
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
                                    Container(
                                      width: 180,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: AppColor.mainColorOrange,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Subcribe Now',
                                        style: TextSizeThemeChrome.ButtonWhite
                                            .copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                      )),
                                    )
                                  ],
                                ),
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
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Home'),
                            SizedBox(
                              width: context.width * 0.05,
                            ),
                            const Text('Contact Us')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                '${CommonString.appImg}fbicon.svg'),
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
                            SvgPicture.asset(
                                '${CommonString.appImg}yticon.svg'),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.width * 0.05,
                  ),
                  const Divider(),
                  SizedBox(
                    height: context.width * 0.05,
                  ),
                  Column(
                    children: [
                      SizedBox(
                          width: 150,
                          height: 50,
                          child: Image.asset('${CommonString.appImg}logo.png')),
                      const Text('© 2019 Lift Media. All rights reserved.'),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => const PrivacyPolicyScreen()),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Terms of Service',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        :
        //for Chrome View
        Container(
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
                      padding: EdgeInsets.all(context.width * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subscribe Newsletters',
                            style: TextSizeThemeChrome.ftHeadingWhite,
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
                                      width: context.width * 0.2,
                                      height: 72,
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
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
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: AppColor.mainColorOrange,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Center(
                                          child: Text(
                                        'Subcribe Now',
                                        style: TextSizeThemeChrome.ButtonWhite
                                            .copyWith(
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
                          const Text('Home'),
                          SizedBox(
                            width: context.width * 0.05,
                          ),
                          const Text('Contact Us')
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
                  const Divider(),
                  SizedBox(
                    height: context.width * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('© 2019 Lift Media. All rights reserved.'),
                      SizedBox(
                          width: 250,
                          height: 88,
                          child: Image.asset('${CommonString.appImg}logo.png')),
                      GestureDetector(
                        onTap: () => Get.to(() => const PrivacyPolicyScreen()),
                        child: Row(
                          children: [
                            const Text(
                              'Terms of Service',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: context.width * 0.05,
                            ),
                            const Text(
                              'Privacy Policy',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
