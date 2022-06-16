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
    Color malecarcolor=inactivecardcolor;
    Color femalecardcolor=inactivecardcolor;

    void updateColor( gender selectgen){
      //male card pressed
      if(selectgen==gender.Male){
        if(malecarcolor==inactivecardcolor){
          malecarcolor=activecardcolor;
          femalecardcolor=inactivecardcolor;
        }
        else{
          malecarcolor=inactivecardcolor;
        }
      }
      //female card pressed
      if(selectgen==gender.Female){
        if(femalecardcolor==inactivecardcolor){
          femalecardcolor=activecardcolor;
          malecarcolor=inactivecardcolor;
        }
        else{
          femalecardcolor=inactivecardcolor;
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(

                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        updateColor(gender.Male);
                      });
                    },
                    child: ReusableCard(
                      colour: malecarcolor,
                      cardChild: cardContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        updateColor(gender.Female);
                      });
                    },
                    child: ReusableCard(
                      colour: femalecardcolor,
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

