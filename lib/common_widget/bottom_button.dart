import 'package:bmi_by_me/utilities/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  String ButtonName;
  final Function()? onPressed;

  BottomButton({required this.ButtonName, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(ButtonName.toUpperCase(), style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}
