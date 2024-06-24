import 'package:flutter/material.dart';
import 'package:ewallet_psytech/common/constants.dart';

class SubtitleText extends StatelessWidget {
  final String title;
  const SubtitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kPrimaryColor,
        fontSize: 16,
      ),
    );
  }
}
