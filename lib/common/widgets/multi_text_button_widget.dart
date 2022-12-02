import 'package:flutter/material.dart';

class MultiTextButtonWidget extends StatelessWidget {
  final List<Text> children;
  final VoidCallback onPressed;
  const MultiTextButtonWidget({
    Key? key,
    required this.children,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
