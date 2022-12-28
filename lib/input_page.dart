import 'package:flutter/material.dart';

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
                Expanded(child: ReusableCard(color: Color(0xFF1E1F32))),
                Expanded(child: ReusableCard(color: Color(0xFF1E1F32))),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: Color(0xFF1E1F32))),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: Color(0xFF1E1F32))),
                Expanded(child: ReusableCard(color: Color(0xFF1E1F32))),
              ],
            ),
          ),
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