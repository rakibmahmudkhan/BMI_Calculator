import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  @override
  final IconData? icon;
  final Function()? onPressed;
  RoundIconButton({@required this.icon, this.onPressed});
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(height: 45, width: 45),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
