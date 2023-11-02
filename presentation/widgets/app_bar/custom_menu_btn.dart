import 'package:dinesh_portfolio/presentation/widgets/app_bar/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_enums.dart';
import '../../blocs/home_bloc/home_bloc.dart';

class CustomMenuBtn extends StatelessWidget {
  const CustomMenuBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: 40,
          child: AnimatedCrossFade(
            crossFadeState: _getCrossFadeState(context),
            firstChild: TextButton(
              onPressed: () => _menuBtnClicked(context),
              child: Icon(
                Icons.menu,
                color: HexColor('#011638'),
                size: 40,
                weight: 100,
              ),
            ),
            secondChild: TextButton(
              onPressed: () => _closeBtnClicked(context),
              child: const Icon(
                Icons.close,
                color: Colors.black87,
                // fontSize: 24,
                // fontWeight: FontWeight.normal),
              ),
            ),
            duration: const Duration(milliseconds: 200),
          ),
        );
      },
    );
  }

  _menuBtnClicked(BuildContext context) {
    context.read<HomeBloc>().add(
          ChangeAppBarHeadersAxis(AppBarHeadersAxis.vertical),
        );
  }

  _closeBtnClicked(BuildContext context) {
    context.read<HomeBloc>().add(
          ChangeAppBarHeadersAxis(AppBarHeadersAxis.horizontal),
        );
  }

  CrossFadeState _getCrossFadeState(BuildContext context) {
    final currentHeaderAxis = context.read<HomeBloc>().appBarHeaderAxis;
    return currentHeaderAxis == AppBarHeadersAxis.horizontal
        ? CrossFadeState.showFirst
        : CrossFadeState.showSecond;
  }
}
