import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80.0;
const Color reusableCardColor = Color(0xFF1E1F32);
const Color bottomContainerColor = Color(0xFF93F3DE);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reusableCardColor,
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            color: reusableCardColor,
            cardChild: Text('holi'),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: reusableCardColor,
                  cardChild: Text('holi'),
                )),
                Expanded(
                    child: ReusableCard(
                  color: reusableCardColor,
                  cardChild: Text('holi'),
                ))
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
          // FilledButton(
          //   onPressed: () {},
          //   child: Text('Calculate'),
          // )
        ],
      ),
    );
  }
}
