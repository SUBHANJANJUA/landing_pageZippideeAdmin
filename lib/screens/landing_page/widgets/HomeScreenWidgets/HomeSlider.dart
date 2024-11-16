import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zippidee_landing_page/resources/responsive/Responsive.dart';

import '../../../../resources/Text_Size/text_size.dart';
import 'profileContainer.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
    required this.dataList,
  });

  final List<Map<String, String>> dataList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: Responsive.isMobile(context)? EdgeInsets.symmetric(horizontal: 20):
            EdgeInsets.symmetric(horizontal: context.width*0.2),
            child: Column(
              children: [
                Text(
                  'Testimonial',
                  style: TextSizeThemeMobile.Step1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text( textAlign: TextAlign.center,
                  'What Our Client’s Say',
                  style: TextSizeThemeMobile.heading2,
                ),
                SizedBox(
                  height: 10,
                ),
                Text( textAlign: TextAlign.center,
                  'See what Zippidee users have to say about their experiences. Here’s how Zippidee has helped them simplify their routine and save time.',
                  style: TextSizeThemeMobile.heading3,
                ),
              ],
            ),
          ),


          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 250,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(dataList.length, (index) {
                  final item = dataList[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: ProfileContainer(
                      profileName: item['name']!,
                      profileSubName: item['subname']!,
                      profileText: item['description']!,
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}