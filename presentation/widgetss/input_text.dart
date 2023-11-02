import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onSubmit;
  const InputText({this.controller, this.onSubmit, this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
        controller: controller,
        onFieldSubmitted: (value) {
          onSubmit?.call(value);
        },
      ),
    );
  }
}
