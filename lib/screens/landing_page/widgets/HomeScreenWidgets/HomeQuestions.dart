import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zippidee_landing_page/resources/responsive/Responsive.dart';

import '../../../../Controller/toogle_answer/toogle_answer_controller.dart';
import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';

class HomeQestions extends StatelessWidget {
  const HomeQestions({
    super.key,
    required this.answercontroller,
  });

  final ToogleAnswerController answercontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
      child: Responsive.isMobile(context)?
      Column(
        children: [
          Text(textAlign: TextAlign.center,
            'Answers to your questions',
            style: TextSizeThemeMobile.heading2,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility1(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Enim sodales consequat adipiscing facilisis massa venenatis, non lorem lobortis?',
                                  style: TextSizeThemeMobile.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible1.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible1.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible1.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeMobile.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility2(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Venenatis nulla sagittis nunc, lobortis nec sollicitudin neque, dolor?',
                                  style: TextSizeThemeMobile.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible2.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible2.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible2.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeMobile.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility3(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Varius ultricies molestie tellus fermentum, viverra ipsum scelerisque etiam lorem?',
                                  style: TextSizeThemeMobile.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible3.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible3.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible3.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeMobile.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility4(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Nulla etiam vitae, at sagittis, nibh ultrices mattis feugiat faucibus?',
                                  style: TextSizeThemeMobile.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible4.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible4.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible4.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeMobile.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility5(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Enim sodales consequat adipiscing facilisis massa venenatis, non lorem lobortis?',
                                  style: TextSizeThemeMobile.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible5.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible5.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible5.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeMobile.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),

              ],
            ),
          )
        ],
      ):

      Column(
        children: [
          Text(textAlign: TextAlign.center,
            'Answers to your questions',
            style: TextSizeThemeChrome.heading1,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility1(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Enim sodales consequat adipiscing facilisis massa venenatis, non lorem lobortis?',
                                  style: TextSizeThemeChrome.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible1.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible1.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible1.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeChrome.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility2(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Venenatis nulla sagittis nunc, lobortis nec sollicitudin neque, dolor?',
                                  style: TextSizeThemeChrome.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible2.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible2.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible2.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeChrome.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility3(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Varius ultricies molestie tellus fermentum, viverra ipsum scelerisque etiam lorem?',
                                  style: TextSizeThemeChrome.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible3.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible3.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible3.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeChrome.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility4(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Nulla etiam vitae, at sagittis, nibh ultrices mattis feugiat faucibus?',
                                  style: TextSizeThemeChrome.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible4.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible4.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible4.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeChrome.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> answercontroller.toggleAnswerVisibility5(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                                  'Enim sodales consequat adipiscing facilisis massa venenatis, non lorem lobortis?',
                                  style: TextSizeThemeChrome.QuestionTheme,
                                )),
                            Obx(()=> Icon(
                              answercontroller.isAnswerVisible5.value?
                              Icons.minimize:Icons.keyboard_arrow_down,
                              color: answercontroller.isAnswerVisible5.value? Colors.black: AppColor.QuestionColorbrown,
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(()=>answercontroller.isAnswerVisible5.value?
                      Text('Adipiscing ac lacus vel sed sed sed tincidunt at. Laoreet consequat donec id fermentum. Metus, tortor tellus ornare mauris, convallis quis. Tristique vulputate enim, vitae sodales nisl enim est. Ut diam volutpat, enim convallis. Pulvinar posuere gravida vitae fringilla eu tellus neque est feugiat.',

                          style: TextSizeThemeChrome.heading3.copyWith(color: Colors.black)
                      ):SizedBox.shrink(),),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.width * 0.025,
                ),
                Divider(),

              ],
            ),
          )
        ],
      ),
    );
  }
}