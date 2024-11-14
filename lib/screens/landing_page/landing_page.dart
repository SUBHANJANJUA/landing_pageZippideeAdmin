import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:zippidee_landing_page/resources/Text_Size/text_size.dart';
import 'package:zippidee_landing_page/resources/string/common_string.dart';

import '../../Controller/TabBar_controller/TabBarController.dart';
import '../../resources/Colors/AppColor.dart';
import 'ContactUsTab.dart';
import 'HomeTab.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> EventsData = [HomeTab(), ContactUsTab()];
 // int selectedIndex = 0;
final DashboardController dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),

        child:Obx(()=> AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          actions: [
            GestureDetector(
                onTap: () {
                  dashboardController.selectIndex(0);
                  // setState(() {
                  //   selectedIndex = 0;
                  // });
                },
                child: Text("Home", style: TextSizeTheme.TabBar.copyWith(color: dashboardController.selectedIndex ==0 ?
                AppColor.mainColorOrange:Colors.black)
                )
            ),
            SizedBox(width: context.width*0.025,),
            GestureDetector(
                onTap: () {
                  dashboardController.selectIndex(1);
                  // setState(() {
                  //   selectedIndex = 1;
                  // });
                },
                child: Padding(
                  padding:  EdgeInsets.only(right: context.width*0.05),
                  child: Text("Contact Us",style: TextSizeTheme.TabBar.copyWith(color: dashboardController.selectedIndex ==0 ?
                  Colors.black: AppColor.mainColorOrange)
                  ),
                )),
          ],
          title: Padding(
            padding: EdgeInsets.all( context.width * 0.05, ),
            child: SizedBox(
                height: 88,
                width: 250,
                child: Image.asset('${CommonString.appImg}logo.png')),
          ),

        ),)
      ),
      body:PageView.builder(
        itemCount: EventsData.length,
        controller: PageController(viewportFraction: 1),
        onPageChanged: (value) {
          dashboardController.selectedIndex.value = value;
          // setState(() {
          //   selectedIndex = value;
          // });
        },
        itemBuilder: (BuildContext context, int itemIndex) {
          return Obx(() => EventsData[dashboardController.selectedIndex.value]);
        },
      ),

    );
  }

}








