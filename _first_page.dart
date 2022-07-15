import 'package:flutter/material.dart';
import 'package:blinking_text/blinking_text.dart';


class firstPage extends StatelessWidget {

  

  const firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
             padding: EdgeInsets.all(0.0),
              child: GestureDetector(
                 onTap: () {
                     Navigator.pushNamed(context, '/login');
                            },
          child: FittedBox(
            child: Image(
          image:  AssetImage('assets/chess4.jpg'),
          
        ),

        fit: BoxFit.fill,
          )
        
        )
      ),
      Container(
        alignment: Alignment.center,
        child:  const BlinkText(
              'Press Any Button',
              style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 190, 177, 213)),
              beginColor: Color.fromARGB(255, 231, 52, 52),
              endColor: Color.fromARGB(255, 24, 20, 14),
              times: 10,
              duration: Duration(seconds: 1)
),
      )
        ],
      ),
      
    );
  }
}