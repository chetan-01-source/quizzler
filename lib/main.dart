import 'package:flutter/material.dart';

void main() {
  runApp(
    Quizzler(),
  );
}

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 30,right: 20),
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 15.0),
                      child: Text(
                        'Some cats are actually allergic to humans',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: Container(
                margin: EdgeInsets.all(25.0),

                color: Colors.green,
                child: TextButton(
                  onPressed:(){} ,
                  child:Center(
                    child: Text('True',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white
                    ),
                    ),
                  ) ,
                ),
              ),),
              Expanded(child: Container(
                margin: EdgeInsets.all(25.0),

                color: Colors.red,
                child: TextButton(
                  onPressed:(){} ,
                  child:Center(
                    child: Text('false',
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white
                      ),
                    ),
                  ) ,
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
