import 'package:flutter/material.dart';
import '../Constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap,required this.BottomTitle } );
  final Function onTap;
  final String BottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>{
        onTap()
      },
      child: Container(
        child: Center(child: Text(BottomTitle, style:kLargeButtonStyle,)),
        color: kBottomColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: kBottomCotainerHeight,
      ),
    );
  }
}