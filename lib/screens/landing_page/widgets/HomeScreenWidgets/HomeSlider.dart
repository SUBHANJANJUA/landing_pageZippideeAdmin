import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          Text(
            'Testimonial',
            style: TextSizeTheme.Step1,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'What Our Client’s Say',
            style: TextSizeTheme.heading1,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'See what Zippidee users have to say about their experiences. Here’s how Zippidee has ',
            style: TextSizeTheme.heading3,
          ),
          Text(
            'helped them simplify their routine and save time.',
            style: TextSizeTheme.heading3,
          ),
          SizedBox(
            height: context.width * 0.03,
          ),
          SizedBox(
            height: 250,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(dataList.length, (index) {
                  final item = dataList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
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