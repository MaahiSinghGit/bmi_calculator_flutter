import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_flutter/Components/icon_content.dart';
import 'package:bmi_calculator_flutter/Components/reusable_card.dart';
import 'package:bmi_calculator_flutter/Components/Constant.dart';
import 'package:bmi_calculator_flutter/Components/BottomButton.dart';
import 'package:bmi_calculator_flutter/Components/RoundButton.dart';

import 'package:bmi_calculator_flutter/screens/result_page.dart';
enum gender{
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;
  int weight=55;
  int age=20;
  Color malecardColor=kInactiveCardColor;
  Color femalecardColor=kInactiveCardColor;
  void updateCoor(gender selectgen){
    if(selectgen==gender.Male){
      if(malecardColor==kInactiveCardColor){
        malecardColor=kActiveCardColor;
        femalecardColor=kInactiveCardColor;
      }
      else{
        malecardColor=kInactiveCardColor;
      }
    }
    if(selectgen==gender.Female){
      if(femalecardColor==kInactiveCardColor){
        femalecardColor=kActiveCardColor;
        malecardColor=kInactiveCardColor;
      }
      else{
        femalecardColor=kInactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Body Mass Index')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(

                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        updateCoor(gender.Male);
                      });
                    },
                    child: ReusableCard(
                      colour: malecardColor,
                      cardChild: cardContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                       updateCoor(gender.Female);
                      });
                    },
                    child: ReusableCard(
                      colour: femalecardColor,
                      cardChild: cardContent(icon: FontAwesomeIcons.venus, lable: 'FEMALE'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT', style: kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                                height.toString(),
                              style:kNumberStyle,
                            ),
                            Text(' cm',style: kLabelTextStyle,)
                          ],
                        ),
                        Slider(value: height.toDouble(),
                          min: 50.0,
                          max: 250.0,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue){
                          setState((){
                            height=newValue.round();
                          });
                          },

                        ),
                      ],
                    ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(weight.toString(),style: kNumberStyle,),
                            Text(' kg',style: kLabelTextStyle,),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           RoundIconButton(icon: FontAwesomeIcons.minus,
                             onPressed:(){
                                setState(() {
                                  weight--;
                                });
                             }

                           ),
                            SizedBox(
                              width: 10.0,
                            ),
                           RoundIconButton(icon: FontAwesomeIcons.plus,
                             onPressed: (){
                             setState((){
                               weight++;
                             });
                             },
                           ),
                          ],
                        ),
                      ],
                    ),
                ),
              ),
              Expanded(
                child:ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE', style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(age.toString(),style: kNumberStyle,),
                          Text(' yr',style: kLabelTextStyle,),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                              onPressed:(){
                                setState(() {
                                  age--;
                                });
                              }

                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState((){
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          BottomButton(
            onTap:  (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultsPage()));
            },
            BottomTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}





