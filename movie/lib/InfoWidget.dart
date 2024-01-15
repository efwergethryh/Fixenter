import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  late Icon icon;
  late Text info;
  InfoWidget({required this.icon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 2,
        ),
        info
      ],
    );
  }
}
