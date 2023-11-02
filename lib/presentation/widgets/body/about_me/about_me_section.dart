import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/presentation/about_me/about_me.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutMe(),
          // const SizedBox(height: 8),
          // Center(
          //   child: CustomDivider(
          //     color: AppColors.white,
          //     width: context.width / 4,
          //     height: 2,
          //   ),
          // ),
          // const SizedBox(height: 8),
          // const ExperienceInfo(),
          // const SizedBox(height: 58),
          // const BasicServicesGrid(),
          // const SizedBox(height: 80),
          // const DetailedServicesSection(),
        ],
      ),
    );
  }
}
