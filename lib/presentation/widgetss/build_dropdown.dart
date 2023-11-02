import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/presentation/widgetss/text_widget.dart';

class BuildDropDownMenu extends StatelessWidget {
  final String? selectedItem;
  final Function(String?)? onChanged;

  final List<String> menuItems;
  const BuildDropDownMenu(
      {required this.selectedItem,
      required this.menuItems,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedItem!,
      items: menuItems
          .map(
            (element) => DropdownMenuItem(
              value: element,
              child: TextWidget(
                label: element,
              ),
            ),
          )
          .toList(),
      onChanged: (value) {
        if (onChanged != null) onChanged?.call(value!);
      },
    );
  }
}
