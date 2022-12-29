import 'package:flutter/material.dart';

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
                Expanded(child: ReusableCard(color: reusableCardColor)),
                Expanded(child: ReusableCard(color: reusableCardColor)),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: reusableCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: reusableCardColor)),
                Expanded(child: ReusableCard(color: reusableCardColor)),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
      ),
    );
  }
}
