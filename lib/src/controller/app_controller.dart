import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_project/src/components/youtube_bottom_sheet.dart';

enum RouteName { home, explore, add, subs, library }

class AppController extends GetxService {
  //BottomNavigation은 앱이 실행중인 내내 작동해야 하기 때문에 GetxService로 extends한다.
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    if (RouteName.values[index] == RouteName.add) {
      //(index == 2) 이렇게 index로 라우트를 찾도록 하는 것 보다 RouteName.value를 활용하여 더 정확하게 찾을 수 있도록 한다.
      _showBottomSheet();
    } else {
      currentIndex(index);
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(YoutubeBottomSheet());
  }
}
