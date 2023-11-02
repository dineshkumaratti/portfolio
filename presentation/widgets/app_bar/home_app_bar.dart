import 'package:flutter/material.dart';

import '../../../core/utils/app_constants.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../about_me/build_image.dart';
import 'custom_menu_btn.dart';
import 'developer_name_btn.dart';
import 'horizontal_headers.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(AppConstants.appBarHeight);

  @override
  Widget build(BuildContext context) {
    //final isSmallScreen = MediaQuery.of(context).size.height < 400;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const BuildManImage(
            dimension: 55,
          ),
          const SizedBox(
            width: 20,
          ),
          const DeveloperNameBtn(),
          const Spacer(),
          context.width > DeviceType.ipad.getMaxWidth()
              ? const HorizontalHeaders()
              : const CustomMenuBtn()
        ],
      ),
    );
  }

  double getHorizontalPadding(BuildContext context) {
    if (context.width < DeviceType.ipad.getMaxWidth()) {
      return context.width * .03;
    } else {
      return context.width * .08;
    }
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
