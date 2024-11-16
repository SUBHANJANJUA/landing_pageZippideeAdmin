import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../resources/Colors/AppColor.dart';
import '../../resources/Text_Size/text_size.dart';
import '../../resources/string/common_string.dart';
import 'widgets/ContactUsWidgets/ContactUsBody.dart';
import 'widgets/commonWidgets/BottomNavBar.dart';

class ContactUsTab extends StatelessWidget {
  const ContactUsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ContactUsBody(),
              SizedBox(
                height: 20,
              ),
              BottomNavBar(),
            ],
          ),
        ));
  }
}

