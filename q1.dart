import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          5,
          (int index){
            return rowWidget(index + 1);
          }
        ),
      ),
    );
  }

  Row rowWidget(int rowNumber){

    if(rowNumber%2 == 0){
      return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boxWidget(Colors.black),
              boxWidget(Colors.white),
              boxWidget(Colors.black),
              boxWidget(Colors.white),
              boxWidget(Colors.black),
            ],
          );
    }
    else{
      return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boxWidget(Colors.white),
              boxWidget(Colors.black),
              boxWidget(Colors.white),
              boxWidget(Colors.black),
              boxWidget(Colors.white),
            ],
          );
    }
  }

  Widget boxWidget(Color color){
    return Container(
                height: 25,
                width: 25,
                color: color,
              );
  }
}
