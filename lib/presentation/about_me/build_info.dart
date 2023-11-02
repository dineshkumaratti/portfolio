import 'package:flutter/material.dart';

import '../../core/config/styles/text_style.dart';
import '../home/project_bloc/project_bloc.dart';
 import '../widgetss/text_widget.dart';

class BuildManInfo extends StatelessWidget {
  const BuildManInfo({required this.bloc, super.key});
  final ProjectBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextWidget(
            // maxLines: 3,
            overflow: TextOverflow.visible,
            label: 'Hello 👋 there, Welcome to my site 🕸🕸',
            style: getTextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextWidget(
            label: 'Diddi Manoj 😎 \nFlutter Developer.',
            style: getTextStyle(
              fontSize: 25,
            ),
            overflow: TextOverflow.fade,
            // breakSpaces: true,
          ),
        ],
      ),
    );
  }
}
