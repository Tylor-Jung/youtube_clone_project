import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:youtube_clone_project/src/app.dart';
import 'package:youtube_clone_project/src/binding/init_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Clone App',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(), // BottomNavigation을 위한 InitBinding
      initialRoute: '/', //최초 라우트 되는 페이지
      getPages: [GetPage(name: '/', page: () => App())],
    );
  }
}
