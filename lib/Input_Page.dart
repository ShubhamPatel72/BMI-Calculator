import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

int count = 0;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(Color(0xFF1D1E33)),
                    ),
                    Expanded(
                      child: ReusableCard(Color(0xFF1D1E33)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(Color(0xFF1D1E33)),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(Color(0xFF1D1E33)),
                    ),
                    Expanded(
                      child: ReusableCard(Color(0xFF1D1E33)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  ReusableCard(@required this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
