import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult, required this. resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text('YOUR RESULT',
                style: kTitleTextStyle
                ),
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: ReusableCard(
                colour: kInActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(bmiResult.toUpperCase(),
                    style: kBMITextStyle,
                    ),
                    Text(interpretation.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                    ),
                    BottomButton(
                      buttonTitle: 'RE-CALCULATE',
                      onTap: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                onPress: (){}
            )
          )
        ],
      ),
    );
  }
}
