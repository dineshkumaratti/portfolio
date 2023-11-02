import 'package:flutter/material.dart';
import '../../core/config/app_colors.dart/app_colors.dart';
import '../widgets/body/home_body.dart';
import '../widgets/app_bar/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        // extendBody: true,
        // extendBodyBehindAppBar: true,
        // resizeToAvoidBottomInset: false,
        appBar: const HomeAppBar(),
        body: const HomeBody(),
      ),
    );
  }
}
