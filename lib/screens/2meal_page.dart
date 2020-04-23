import 'package:flutter/material.dart';
import 'package:tracker/constants.dart';
import 'package:tracker/screens/timer_page.dart';
import '../components/reusable_button1.dart';
import '../components/reusable_button2.dart';
import 'timer.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2 MEAL A DAY PLAN'),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Text(
                  'Are you ready to fasting?',
                  style: kSmallButtonTextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('100k people are fasting with you'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  )
                ],
              ),
              SizedBox(height: 30),
              RadialProgress(),
              SizedBox(height: 80),
              ReusableButton2(
                  colour: kInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'END FAST',
                        style: kBodyTextStyle,
                      )
                    ],
                  )),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'STARTED FASTING',
                        style: kSmallButtonTextStyle,
                      ),
                      Text('Todat, 23:56')
                    ],
                  )),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'FAST ENDING',
                        style: kSmallButtonTextStyle,
                      ),
                      Text('Tommorow, 15:56')
                    ],
                  )),
                  SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
