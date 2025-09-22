import 'package:flutter/material.dart';
import 'package:practice_flutter/widgets/banner.dart';
import 'package:practice_flutter/widgets/in_progress.dart';
import 'package:practice_flutter/widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
              TopBar(),
              SizedBox(height: 35,),
              BannerSection(),
              SizedBox(height: 35,),
              InProgress()
          ]),
        ),
      ),
    );
  }
}
