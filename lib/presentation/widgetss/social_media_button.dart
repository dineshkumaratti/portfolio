import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/presentation/widgetss/primary_button.dart';
// import 'package:flutter_social_button/flutter_social_button.dart';

class BuildSocialMediaButton extends StatelessWidget {
  final VoidCallback? callback;
  final IconData? type;
  final String? message;
  const BuildSocialMediaButton({
    required this.callback,
    this.message = 'launch url',
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 20,
      child: Tooltip(
        message: message,
        child: PrimaryButton(
          label: '',
          child: Icon(type!),
          // type: type!,
          onPressed: () {
            //clicked
            debugPrint('launching url......');
            callback?.call();
          },
        ),
      ),
    );
  }
}
