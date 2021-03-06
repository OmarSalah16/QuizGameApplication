import 'package:flutter/material.dart';
import 'package:home/screens/Home_Screen.dart';
import 'package:home/screens/score.dart';
import 'package:home/widgets/widgets.dart';

class QuizScreen extends StatelessWidget
{
  const QuizScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        leading: new IconButton(icon: new Icon(Icons.arrow_back_ios, color: Colors.blue),onPressed: () => Navigator.of(context).pop()),
        iconTheme: const IconThemeData(color: Colors.blue),
        centerTitle: true,
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      
      body: SafeArea
      (
        child: Column
        (
          children:
          [
            const SizedBox(height: 20),

            const Text
            (
              "What's the most efficient programming language?",
              textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black,),
            ),
            
            const SizedBox(height: 80),

            Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
              [
                ElevatedButton
                (
                  style: ElevatedButton.styleFrom
                  (
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                
                  child: const Text('C++',style: TextStyle(fontSize: 24)),
                  onPressed: () {},
                ),

                const SizedBox(width: 10),
                GestureDetector
                (
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Home_Screen() ));},
                  child: ElevatedButton
                  (
                    style: ElevatedButton.styleFrom
                    (
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),
                  
                    child: const Text('Python',style: TextStyle(fontSize: 24)),
                    onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const Score()));},
                  ),
                )
              ]
            ),

            const SizedBox(height: 20),
            Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
              [
                ElevatedButton
                (
                  style: ElevatedButton.styleFrom
                  (
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),

                  child: const Text('Java',style: TextStyle(fontSize: 24)),
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                ElevatedButton
                (
                  style: ElevatedButton.styleFrom
                  (
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),

                  child: const Text('Flutter',style: TextStyle(fontSize: 24)),
                  onPressed: () {},
                )
              ]
            )
          ]
        ),
      )
    );
  }
}
