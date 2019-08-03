import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULTOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 10, right: 10,),
              child: Text("Your Result", style: kLargeTitleTextStyle),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(resultText, style: kResultPageGreenStyle,),
                  Text(bmiResult.toString(), style: kLargeNumberTextStyle,),
                  Text(interpretation,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
               },
              buttonTitle: "RECALCULATE")
        ],
      ),
    );
  }
}
