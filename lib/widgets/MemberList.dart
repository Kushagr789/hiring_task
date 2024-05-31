import 'package:flutter/material.dart';
class Memberlist extends StatelessWidget {
  const Memberlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 30,
          color: Colors.blue,
        );
      },
    );
  }
}
