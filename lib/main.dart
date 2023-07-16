import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Quiz_brain.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: Quizzler(),
    ),
  );
}

class Quizzler extends StatefulWidget {

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  Quiz quns =Quiz();
  List<Icon> ScoreKeeper = [
      ];
   void checkAnswer(bool userPickedAnswer)
   {
     bool correctAnswer =quns.getQuestionAnswer();
     if(correctAnswer== userPickedAnswer)
     {
       ScoreKeeper.add(
           Icon(Icons.check,
             color: Colors.green,)
       );
     }
     else{
       ScoreKeeper.add(Icon(
         Icons.close,
         color: Colors.red,
       )
       );
     }
     setState(() {
       if (quns.Check() == true) {
         print('entered');
         Alert(context: context, title: "ALERT!!", desc: "Questions are ended!!!,You need to restart your app").show();
       }
       quns.Next();
     },

     );
   }

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {
    FutureBuilder(future: _initialization,builder: (context,snapshot){
      if (snapshot.hasError){
        print("Error");
      }
      if(snapshot.connectionState == ConnectionState.done){
        return Quizzler();
      }
      return CircularProgressIndicator();
    }
    );
    return  Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 20),
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 15.0),
                      child:
                      Text(
                        quns.getQuestionText(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(25.0),
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {

                        checkAnswer(true);




                    },
                    child: Center(
                      child: Text(
                        'True',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(25.0),
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Center(
                      child: Text(
                        'false',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: ScoreKeeper,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
