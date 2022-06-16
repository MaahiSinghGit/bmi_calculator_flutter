import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activecardcolor = Color(0xFF1D1E33);
const bottomcolor = Color(0xFFEB1555);
const inactivecardcolor= Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
    Color malecarcolor=inactivecardcolor;
    Color femalecardcolor=inactivecardcolor;

    void updateColor(int gender){
      if(gender==1){
        if(malecarcolor==inactivecardcolor){
          malecarcolor=activecardcolor;
        }
        else{
          malecarcolor=inactivecardcolor;
        }
      }
      if(gender==2){
        if(femalecardcolor==inactivecardcolor){
          femalecardcolor=activecardcolor;
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
                        updateColor(1);
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
                        updateColor(2);
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
                  colour: activecardcolor,
                  cardChild: ,
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
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activecardcolor,
                ),
              ),
            ],
          )),
          Container(
            child: cardChild,
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

