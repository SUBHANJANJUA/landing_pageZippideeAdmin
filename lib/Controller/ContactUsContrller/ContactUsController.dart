import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController{
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController msg = TextEditingController();

void showdata(){
  log(name.text);
  log(phone.text);
  log(email.text);
  log(msg.text);
  }

  String? ValidateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    } else if (value.length < 3) {
      return 'Name must be at least 3 characters long';
    }
    return null;
  }
  String? ValidatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone is required';
    } else if (value.length < 10) {
      return 'Phone must be at least 10 characters long';
    }
    return null;
  }
  String? ValidateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!value.contains('@') || !value.contains('.')) {
      return 'Please enter valid email';
    }
    return null;
  }
  String? ValidateMsg(String? value) {
    if (value == null || value.isEmpty) {
      return 'Message is required';
    } else if (value.length < 6) {
      return 'Message must be at least 6 characters long';
    }
    return null;
  }

  @override
  void dispose() {
    name.dispose();
    phone.dispose();
    email.dispose();
    msg.dispose();
    super.dispose();
  }

}