import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController{
  final name = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final msg = TextEditingController();
  // Future <void> sendEmail ()async{
  //   if (name.text.isNotEmpty &&
  //       email.text.isNotEmpty &&
  //       msg.text.isNotEmpty) {
  //     final Email send = Email(
  //       body:
  //       'Name: ${nameController.text}\n\nDescription(Support Form): ${description.text} \n\n\n\n================================\n Name : ${authController.userName.value}\n Email : ${authController.userEmail.value}\n Phone : ${authController.userPhone.value}',
  //       subject: subject.text,
  //       recipients: [
  //         'support@zippidee.app'
  //       ], // Your email address
  //
  //       isHTML: false,
  //     );
  //     try {
  //       await FlutterEmailSender.send(send);
  //       // Utils.showSuccess('Successfully sent email.');
  //     } catch (error) {
  //       log(error.toString());
  //       Utils.showError(
  //           'Could not send email. Please try again later.');
  //     }
  //   } else {
  //     Utils.showError('Add All Field');
  //   }
  // }
}