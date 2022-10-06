import 'package:get/get.dart';

class AppController extends GetxService {
  //BottomNavigation은 앱이 실행중인 내내 작동해야 하기 때문에 GetxService로 extends한다.
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex(index);
  }
}
