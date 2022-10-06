import 'package:flutter/material.dart';
import 'package:youtube_clone_project/src/components/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: CustomAppBar(),
          floating: true, // 스크롤 위로 올릴때 앱바 다시 나타나도록
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  color: Colors.grey,
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    ));
  }
}
