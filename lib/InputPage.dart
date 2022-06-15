import 'package:flutter/material.dart';
import 'ReusableCard.dart';

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
                  child: ReusableCard(colour: Color(0xFF3F4F5DFF),),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF3F4F5DFF),),
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child:ReusableCard(colour: Color(0xFF1D1E33),),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: Color(0xFF3F4F5DFF),),
              ),
              Expanded(
                child: ReusableCard(colour: Color(0xFF3F4F5DFF),),
              ),
            ],
          )),
        Container(
          color: Color(0xFFEB155),
          margin: EdgeInsets.all(15.0),
          width: double.infinity,
        ),
        ],
      ),
    );
  }
}
