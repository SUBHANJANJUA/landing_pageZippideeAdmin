import 'package:get/get.dart';

class ToogleAnswerController extends GetxController {
  var isAnswerVisible1 = false.obs;
  var isAnswerVisible2= false.obs;
  var isAnswerVisible3= false.obs;
  var isAnswerVisible4= false.obs;
  var isAnswerVisible5= false.obs;
  var isMobile= false.obs;

  void toggleMobileView() {
    isMobile.value = !isMobile.value;
  }
  void toggleAnswerVisibility1() {
    isAnswerVisible1.value = !isAnswerVisible1.value;
  }
   void toggleAnswerVisibility2() {
    isAnswerVisible2.value = !isAnswerVisible2.value;
  }
   void toggleAnswerVisibility3() {
    isAnswerVisible3.value = !isAnswerVisible3.value;
  }
   void toggleAnswerVisibility4() {
    isAnswerVisible4.value = !isAnswerVisible4.value;
  }
   void toggleAnswerVisibility5() {
    isAnswerVisible5.value = !isAnswerVisible5.value;
  }

}
