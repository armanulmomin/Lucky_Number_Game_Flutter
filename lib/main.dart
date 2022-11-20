import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x=0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(title: Text('Test your luck'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Your lucky number is $x')),
            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: x == 5 ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,size: 35,),
                    SizedBox(height: 25,),
                    Text("Better luck next time and your lucky number is $x.\n try again", textAlign: TextAlign.center,),

                  ],
                ) : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done,color: Colors.green,size: 35,),
                    SizedBox(height: 25,),
                    Text("Your lucky number is  $x.\n Thanks for trying", textAlign: TextAlign.center,),

                  ],
                ),
              ),
            )

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(50);
            print(x);
            setState(() {

            });

           // print(random.nextInt(10).toString());
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}




