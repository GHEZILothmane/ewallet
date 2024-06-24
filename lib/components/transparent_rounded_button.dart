import 'package:flutter/material.dart';
import 'package:ewallet_psytech/common/constants.dart';

const kPrimaryColor = Colors.blue; // Replace with your actual primary color

class TransparentRoundedButton extends StatelessWidget {
  const TransparentRoundedButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: kPrimaryColor,
      ),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Container(
          margin: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(29),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(19),
              backgroundColor: Colors.white,
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
