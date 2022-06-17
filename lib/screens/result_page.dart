import 'package:bmi_calculator_flutter/Components/reusable_card.dart';
import 'package:bmi_calculator_flutter/Components/Constant.dart';
import 'package:bmi_calculator_flutter/Components/BottomButton.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMIresultText,
                  ),
                  Text(
                    'Your BMI result is quite low, You Should ead more !',
                    textAlign: TextAlign.center,
                    style: kBodyText,

                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
             Navigator.pop(context);
            },
            BottomTitle: 'Re-CALCULATE',
          ),
        ],
      ),
    );
  }
}
