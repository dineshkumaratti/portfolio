import 'package:dinesh_portfolio/core/config/styles/text_style.dart';
import 'package:dinesh_portfolio/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .5
              : context.width * .2,
          child: Text(
            AppStrings.developerName,
            style: context.width > DeviceType.ipad.getMaxWidth()
                ? getTextStyle(color: Colors.black, fontSize: 24)
                : getTextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
