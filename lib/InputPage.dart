import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activecardcolor = Color(0xFF1D1E33);
const bottomcolor = Color(0xFFEB1555);
const inactivecardcolor= Color(0xFF111328);
enum gender{
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late gender selectgen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Body Mass Index')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(

                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        selectgen=gender.Male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectgen==gender.Male?activecardcolor:inactivecardcolor,
                      cardChild: cardContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        selectgen=gender.Female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectgen==gender.Female?activecardcolor:inactivecardcolor,
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
                  colour: activecardcolor, cardChild: cardContent(icon: FontAwesomeIcons.venus, lable: 'FEMALE')
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activecardcolor,
                    cardChild: cardContent(icon: FontAwesomeIcons.venus, lable: 'FEMALE')
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activecardcolor,
                    cardChild: cardContent(icon: FontAwesomeIcons.venus, lable: 'FEMALE')
                ),
              ),
            ],
          )),
          Container(
            color: bottomcolor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}

