import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activecardcolor = Color(0xFF3F4F5DFF);
const bottomcolor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    colour: activecardcolor,
                    cardChild: cardContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activecardcolor,
                    cardChild: cardContent(icon: FontAwesomeIcons.venus, lable: 'FEMALE'),
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

