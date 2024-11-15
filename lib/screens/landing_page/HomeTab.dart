import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zippidee_landing_page/resources/responsive/Responsive.dart';
import 'package:zippidee_landing_page/screens/landing_page/widgets/HomeScreenWidgets/HomeSlider.dart';
import 'package:zippidee_landing_page/screens/landing_page/widgets/HomeScreenWidgets/Step1Container.dart';
import 'package:zippidee_landing_page/screens/landing_page/widgets/HomeScreenWidgets/Step2Container.dart';
import 'package:zippidee_landing_page/screens/landing_page/widgets/HomeScreenWidgets/Step3Container.dart';
import '../../Controller/toogle_answer/toogle_answer_controller.dart';
import '../../resources/Colors/AppColor.dart';
import '../../resources/Text_Size/text_size.dart';
import '../../resources/string/common_string.dart';
import 'widgets/commonWidgets/BottomNavBar.dart';
import 'widgets/HomeScreenWidgets/HomeQuestions.dart';

import 'widgets/commonWidgets/buttonContainer.dart';



class HomeTab extends StatelessWidget {
  HomeTab({
    super.key,
  });
 final ToogleAnswerController answercontroller = Get.put(ToogleAnswerController());
  final List<Map<String, String>> dataList = [
    {
      "name": "Theresa Webb",
      "subname": "LOréal",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Dianne Russell",
      "subname": "Starbucks",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Theresa Webb",
      "subname": "LOréal",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Theresa Webb",
      "subname": "LOréal",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Dianne Russell",
      "subname": "Starbucks",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Theresa Webb",
      "subname": "LOréal",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Theresa Webb",
      "subname": "LOréal",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Dianne Russell",
      "subname": "Starbucks",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },
    {
      "name": "Theresa Webb",
      "subname": "LOréal",
      "description":
      "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien imperdiet lectus, et molestie sem tortor quis dui."
    },

    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Responsive.isMobile(context) ?
            //for Mobile View
            Column(

              children: [
                //Mobile
                SizedBox(height: 90,),
                Column(
                  children: [
                    Text(
                      'A one-stop solution for all your routine needs, available wherever you are.',
                      style: TextSizeThemeMobile.heading1, textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Zippidee is your all-in-one solution for everyday tasks. Whatever you need, we bring top professionals right to your fingertips. Our easy-to-use app connects you with qualified experts in just a few taps, saving you time and effort. ',
                      style: TextSizeThemeMobile.heading3,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        ButtonWidgetMobile(
                          text: 'Download on the Google Play',
                          icon: Image.asset(
                              '${CommonString.appImg}playstore.png'),
                          borderColor: AppColor.whiteColor,
                          InnerColor: AppColor.mainColorOrange,
                          textColor: TextSizeThemeMobile.ButtonWhite,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ButtonWidgetMobile(
                          text: 'Download on the App Store',
                          icon: Image.asset(
                              '${CommonString.appImg}apple.png'),
                          borderColor: AppColor.mainColorOrange,
                          InnerColor: AppColor.whiteColor,
                          textColor: TextSizeThemeMobile.ButtonBlack,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: context.width * 0.03,
                ),
                Image.asset('${CommonString.appImg}img1.png'),
              ],
            )

            //for chorom View
                :  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'A one-stop solution for all your routine needs, available wherever you are.',
                        style: TextSizeThemeChrome.heading1,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Zippidee is your all-in-one solution for everyday tasks. Whatever you need, we bring top professionals right to your fingertips. Our easy-to-use app connects you with qualified experts in just a few taps, saving you time and effort. ',
                        style: TextSizeThemeChrome.heading3,
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Expanded(
                            child: ButtonWidgetChrome(
                              text: 'Download on the Google Play',
                              icon: Image.asset(
                                  '${CommonString.appImg}playstore.png'),
                              borderColor: AppColor.whiteColor,
                              InnerColor: AppColor.mainColorOrange,
                              textColor: TextSizeThemeChrome.ButtonWhite,
                            ),
                          ),
                          SizedBox(
                            width: context.width * 0.005,
                          ),
                          Expanded(
                            child: ButtonWidgetChrome(
                              text: 'Download on the App Store',
                              icon: Image.asset(
                                  '${CommonString.appImg}apple.png'),
                              borderColor: AppColor.mainColorOrange,
                              InnerColor: AppColor.whiteColor,
                              textColor: TextSizeThemeChrome.ButtonBlack,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: context.width * 0.03,
                ),
                Expanded(child: Image.asset('${CommonString.appImg}img1.png')),
              ],
            ),
          ),
          SizedBox(
            height: context.width * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child:
            Responsive.isMobile(context) ?
            //for Mobile View

            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text( textAlign: TextAlign.center,
                      'Some Excellent Features For You',
                      style: TextSizeThemeMobile.heading1,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Instant Booking', textAlign: TextAlign.center,
                      style: TextSizeThemeMobile.heading2,
                    ),
                    Text( textAlign: TextAlign.center,
                      'Instant Booking feature lets you find and schedule services in just a few taps. Say goodbye to long waits and set appointments at times that work best for you.',
                      style: TextSizeThemeMobile.heading3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text( textAlign: TextAlign.center,
                      'Verified Professionals',
                      style: TextSizeThemeMobile.heading2,
                    ),
                    Text( textAlign: TextAlign.center,
                      'Trust is our priority. Every professional on Zippidee is thoroughly vetted and verified to ensure quality and reliability. With experienced experts across a wide range of services, you can be confident you re in good hands, every time.',
                      style: TextSizeThemeMobile.heading3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text( textAlign: TextAlign.center,
                      'Safe & Secure Payments',
                      style: TextSizeThemeMobile.heading2,
                    ),
                    Text( textAlign: TextAlign.center,
                      'Zippidee uses top-tier encryption and payment processing to protect your information, making transactions fast, easy, and worry-free.',
                      style: TextSizeThemeMobile.heading3,
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),
                Image.asset('${CommonString.appImg}img2.png'),
              ],
            )





            // for chrome view
             : Row(
              children: [
                Expanded(child: Image.asset('${CommonString.appImg}img2.png')),
                SizedBox(
                  width: context.width * 0.05,
                ),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Some Excellent',
                          style: TextSizeThemeChrome.heading1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Features For You',
                          style: TextSizeThemeChrome.heading1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Instant Booking',
                          style: TextSizeThemeChrome.heading2,
                        ),
                        Text(
                          'Instant Booking feature lets you find and schedule services in just a few taps. Say goodbye to long waits and set appointments at times that work best for you.',
                          style: TextSizeThemeChrome.heading3,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Verified Professionals',
                          style: TextSizeThemeChrome.heading2,
                        ),
                        Text(
                          'Trust is our priority. Every professional on Zippidee is thoroughly vetted and verified to ensure quality and reliability. With experienced experts across a wide range of services, you can be confident you re in good hands, every time.',
                          style: TextSizeThemeChrome.heading3,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Safe & Secure Payments',
                          style: TextSizeThemeChrome.heading2,
                        ),
                        Text(
                          'Zippidee uses top-tier encryption and payment processing to protect your information, making transactions fast, easy, and worry-free.',
                          style: TextSizeThemeChrome.heading3,
                        ),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height:150,
          ),

          // Step 1 Container
          Container(
            child: Responsive.isMobile(context) ?
            //For Mobile View

            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'How It Works',
                      style: TextSizeThemeMobile.heading1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text( textAlign: TextAlign.center,
                      'Need a service? Zippidee sends vetted pros straight to you quickly and easily! Zippidee works so you don t have to! ',
                      style: TextSizeThemeMobile.heading3,
                    ),

                  ],
                ),
                SizedBox(
                  height: context.width * 0.05,
                ),
                Step1Container(),
              ],
            )




            // For Chrome View
                :Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'How It Works',
                      style: TextSizeThemeChrome.heading1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Need a service? Zippidee sends vetted pros straight to you quickly and easily!',
                      style: TextSizeThemeChrome.heading3,
                    ),
                    Text(
                      'Zippidee works so you don t have to! ',
                      style: TextSizeThemeChrome.heading3,
                    ),
                  ],
                ),
                SizedBox(
                  height: context.width * 0.05,
                ),
                Step1Container(),
              ],
            ) ,
          ),
          SizedBox(
            height:150,
          ),


          Step2Container(),
          SizedBox(
            height:150,
          ),
          Step3Container(),
          SizedBox(
            height:150,
          ),
          HomeSlider(dataList: dataList),
          SizedBox(
            height:150,
          ),
          HomeQestions(answercontroller: answercontroller),
          SizedBox(
            height: context.width * 0.1,
          ),
          BottomNavBar()
        ],
      ),
    );
  }
}











