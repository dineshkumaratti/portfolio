import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/core/config/app_colors.dart/app_colors.dart';
import 'package:dinesh_portfolio/core/config/functions/functions.dart';
import 'package:dinesh_portfolio/presentation/widgetss/social_media_button.dart';

import 'media_utils.dart';

class BuildFooter extends StatelessWidget {
  const BuildFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      // height: 50,
      // width: double.infinity,
      color: AppColors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: TextWidget(
          //     label: 'Public Profile ulrs:',
          //   ),
          // ),
          //socialmedia icon
          ...MediaUtils.getMediaIcons()
              .entries
              .map(
                (element) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BuildSocialMediaButton(
                    message: MediaUtils.getMediaIconNames()[element.key],
                    callback: () async {
                      await Functions.launchSocialUrl(
                        url: element.value,
                      );
                    },
                    type: element.key,
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
