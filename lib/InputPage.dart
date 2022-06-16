import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'Constant.dart';
enum gender{
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      children: [
                        Text('HEIGHT', style: kLabelTextStyle,),
                        Row(
                          children: [
                            Text(
                                '180',
                              style:kNumberStyle,
                            ),
                          ],
                        )
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
                    cardChild: cardContent(icon: FontAwesomeIcons.venus, lable: 'FEMALE')
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                    cardChild: cardContent(icon: FontAwesomeIcons.venus, lable: 'FEMALE')
                ),
              ),
            ],
          )),
          Container(
            color: kBottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomCotainerHeight,
          ),
        ],
      ),
    );
  }
}

