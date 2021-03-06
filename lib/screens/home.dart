import 'package:flutter/material.dart';
import 'package:home/screens/quiz.dart';
import 'package:home/widgets/widgets.dart';

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold
      (
        appBar: AppBar
        (
          leading: new IconButton(icon: new Icon(Icons.arrow_back_ios, color: Colors.blue),onPressed: () => Navigator.of(context).pop()),
          iconTheme: const IconThemeData(color: Colors.green),
          centerTitle: true,
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center
        (
          child: Column
          (
            children:
            [
              Image.asset('images/logo.png', scale: 1),
              const Text('Computer Science Quiz',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
              const SizedBox(height: 20),
              ElevatedButton
              (
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const QuizScreen()));},
                child: const Text('PLAY'),
                style: ElevatedButton.styleFrom
                (
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  primary: Colors.blue,
                  textStyle: const TextStyle(fontSize: 30)
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
