import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_project/src/controller/app_controller.dart';
import 'package:youtube_clone_project/src/pages/explore.dart';
import 'package:youtube_clone_project/src/pages/home.dart';
import 'package:youtube_clone_project/src/pages/library.dart';
import 'package:youtube_clone_project/src/pages/subscribe.dart';

class App extends GetView<AppController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          //switch 쉽게 하는방법
          // 1. 그냥 switch 입력, RouteName.value~~~ 적어두고,
          // 2. Crt+. 버튼 누르고 add missing items
          // 3. 각 페이지에 맞게끔 return 해주면 끝
          // 4. 가장 마지막에 return Container(); 혹시 모르니깐
          case RouteName.home:
            return Home();
            break;
          case RouteName.explore:
            return Explore();
            break;

          case RouteName.subs:
            return Subscribe();
            break;
          case RouteName.library:
            return Library();
            break;
          case RouteName.add:
            // bottomeSheet 사용예정
            // 가장밑에 두는 이유는 PageRoute를 떠나 독립적인 기능을 수행하기 때문에
            break;
        }
        return Container();
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePageIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/home_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg"),
                label: '홈'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/compass_off.svg",
                    width: 22),
                activeIcon: SvgPicture.asset(
                  "assets/svg/icons/compass_on.svg",
                  width: 22,
                ),
                label: '탐색'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child:
                      SvgPicture.asset("assets/svg/icons/plus.svg", width: 35),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/subs_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/subs_on.svg"),
                label: '구독'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/library_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/library_on.svg"),
                label: '보관함'),
          ],
        ),
      ),
    );
  }
}
