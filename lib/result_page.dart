import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';
import 'InputPage.dart';

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
              child: Text(
                'Your Result',
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
                    style:kBodyText,

                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> ResultsPage(),
              ),
              );
            },
            BottomTitle: 'Re-CALCULATE',
          ),
        ],
      ),
    );
  }

