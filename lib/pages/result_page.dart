import 'package:bmi_by_me/common_widget/bottom_button.dart';
import 'package:bmi_by_me/common_widget/reusable_card.dart';
import 'package:bmi_by_me/utilities/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResult;
  final String? bmiResultText;
  final String? interpretation;
  ResultPage({this.bmiResult, this.bmiResultText, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bmi calculator".toUpperCase()),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Text(
                "your result".toUpperCase(),
                style: kLargeTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: kInActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResultText.toString().toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult.toString(),
                      style: kBmiTextStyle,
                    ),
                    Text(
                      interpretation.toString(),
                      textAlign: TextAlign.center,
                      style: kMessageTextStyle,
                    ),
                  ],
                ),
              )),
          BottomButton(
              ButtonName: "Re-Calculate".toUpperCase(),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
