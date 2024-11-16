import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zippidee_landing_page/resources/responsive/Responsive.dart';

import '../../../../resources/Colors/AppColor.dart';
import '../../../../resources/Text_Size/text_size.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Responsive.isMobile(context)?

        Text(
          'Contact Us',
          style: TextSizeThemeMobile.heading1,
        ): Text(
          'Contact Us',
          style: TextSizeThemeChrome.heading1,
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
          child: Responsive.isMobile(context)
              ? Text(
                  textAlign: TextAlign.center,
                  ' Whether you have a question, need assistance, our team is ready to help!  Reach out to us anytime. We’re just a message away. ',
                  style: TextSizeThemeMobile.heading3,
                )
              : Column(
                  children: [
                    Text(
                      ' Whether you have a question, need assistance, our team is ready to help!  Reach out to us  ',
                      style: TextSizeThemeChrome.heading3,
                    ),
                    Text(
                      ' anytime. We’re just a message away. ',
                      style: TextSizeThemeChrome.heading3,
                    ),
                  ],
                ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                          color: AppColor.bgContainerbrown,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 30,
                              blurRadius: 60,
                              offset: Offset(0, 0),
                              color: Color.fromRGBO(0, 0, 0, 0.03),
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(context.width * 0.025),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Information',
                              style: TextSizeThemeMobile.heading2
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Say something to start a live chat!',
                              style: TextSizeThemeMobile.heading3 .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              height: context.width * 0.1,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.wifi_calling_3,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '+1012 3456 789',
                                  style: TextSizeThemeMobile.heading3
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: context.width * 0.05,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'demo@gmail.com',
                                  style: TextSizeThemeMobile.heading3
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: context.width * 0.05,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on, color: Colors.white),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '132 Dartmouth Street Boston,',
                                        style: TextSizeThemeMobile.heading3
                                            .copyWith(color: Colors.white),
                                      ),
                                      Text(
                                        'Massachusetts 02156 United States',
                                        style: TextSizeThemeMobile.heading3
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      //height: context.width * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 30,
                            blurRadius: 60,
                            offset: Offset(0, 0),
                            color: Color.fromRGBO(0, 0, 0, 0.03),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(context.width * 0.05),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              borderSide: BorderSide(
                                                color: AppColor.FieldBorder,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              borderSide: BorderSide(
                                                color: AppColor.FieldBorder,
                                              )),
                                          hintText: 'Name')),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              borderSide: BorderSide(
                                                color: AppColor.FieldBorder,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              borderSide: BorderSide(
                                                color: AppColor.FieldBorder,
                                              )),
                                          hintText: 'Phone')),
                                ],
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          borderSide: BorderSide(
                                            color: AppColor.FieldBorder,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          borderSide: BorderSide(
                                            color: AppColor.FieldBorder,
                                          )),
                                      hintText: 'Email')),
                              SizedBox(height: 20),
                              TextFormField(
                                  maxLines: 10,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          borderSide: BorderSide(
                                            color: AppColor.FieldBorder,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          borderSide: BorderSide(
                                            color: AppColor.FieldBorder,
                                          )),
                                      hintText: 'Email')),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 57,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Send Message',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColor.mainColorOrange),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: context.width * 0.35,
                      height: context.width * 0.5,
                      decoration: BoxDecoration(
                          color: AppColor.bgContainerbrown,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 30,
                              blurRadius: 60,
                              offset: Offset(0, 0),
                              color: Color.fromRGBO(0, 0, 0, 0.03),
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(context.width * 0.025),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contact Information',
                                style: TextSizeThemeChrome.heading2
                                    .copyWith(color: Colors.white),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Say something to start a live chat!',
                                style: TextSizeThemeChrome.ContactSubHeading,
                              ),
                              SizedBox(
                                height: context.width * 0.1,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.wifi_calling_3,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '+1012 3456 789',
                                    style: TextSizeThemeChrome.heading3
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: context.width * 0.05,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'demo@gmail.com',
                                    style: TextSizeThemeChrome.heading3
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: context.width * 0.05,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on, color: Colors.white),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '132 Dartmouth Street Boston,',
                                          style: TextSizeThemeChrome.heading3
                                              .copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          'Massachusetts 02156 United States',
                                          style: TextSizeThemeChrome.heading3
                                              .copyWith(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: context.width * 0.5,
                      height: context.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 30,
                            blurRadius: 60,
                            offset: Offset(0, 0),
                            color: Color.fromRGBO(0, 0, 0, 0.03),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(context.width * 0.05),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  borderSide: BorderSide(
                                                    color: AppColor.FieldBorder,
                                                  )),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  borderSide: BorderSide(
                                                    color: AppColor.FieldBorder,
                                                  )),
                                              hintText: 'Name')),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  borderSide: BorderSide(
                                                    color: AppColor.FieldBorder,
                                                  )),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  borderSide: BorderSide(
                                                    color: AppColor.FieldBorder,
                                                  )),
                                              hintText: 'Phone')),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            borderSide: BorderSide(
                                              color: AppColor.FieldBorder,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            borderSide: BorderSide(
                                              color: AppColor.FieldBorder,
                                            )),
                                        hintText: 'Email')),
                                SizedBox(height: 20),
                                TextFormField(
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            borderSide: BorderSide(
                                              color: AppColor.FieldBorder,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            borderSide: BorderSide(
                                              color: AppColor.FieldBorder,
                                            )),
                                        hintText: 'Email')),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 57,
                                  child: ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: Text(
                                      'Send Message',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              AppColor.mainColorOrange),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
