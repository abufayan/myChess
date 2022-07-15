
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter/services.dart';


class gamePage extends StatefulWidget {
  gamePage({Key? key}) : super(key: key);

  @override
  State<gamePage> createState() => _homePageState();
}

class _homePageState extends State<gamePage> {

ChessBoardController controller = new ChessBoardController();



@override
void initState() {
    super.initState();
    controller.addListener(() {
      //CHECKING FOR CHECKMATE
      if (controller.isGameOver()){  print('CheckMate'); 
 
        showDialog(context: context, barrierDismissible: false, builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          title: Text('GAME OVER'),
          content: Text('DO YOU WANT A REMATCH?'),
          actions: [TextButton(
            onPressed: (){
              SystemNavigator.pop() ;
            },
            child: Text('NO')),


           TextButton(
            onPressed: (){
              controller.resetBoard();
              Navigator.of(context).pop();
            },
            child: Text('YES'))
           ],
        )
         );
      }


      //CHECK FOR A DRAW
      if(controller.isDraw()){
         showDialog(context: context, barrierDismissible: false, builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          title: Text('GAME IS DRAWN'),
          content: Text('DO YOU WANT A REMATCH'),
          actions: [TextButton(
            onPressed: (){
              SystemNavigator.pop() ;
            },
            child: Text('NO')),


           TextButton(
            onPressed: (){
              controller.resetBoard();
              Navigator.of(context).pop();
            },
            child: Text('YES'))
           ],
        )
         );
      }
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title :  const Text('MY CHESS'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        
      ),
      body :Center(
        child:  ChessBoard(
        controller : controller,
        boardColor : BoardColor.orange,
        boardOrientation  :PlayerColor.white,
        
      ),
      ) ,
    );
}
}