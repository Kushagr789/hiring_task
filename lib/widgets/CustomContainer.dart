import 'package:flutter/material.dart';
class Customcontainer extends StatelessWidget {
  final String text;
  final Color col;
  final IconData ic;
  const Customcontainer({super.key, required this.text, required this.col, required this.ic});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.only(left:20,right: 20),
      child: Row(
        children: [
          Icon(ic,color: col,),
          SizedBox(width: 5,),
          Text(text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: col,
            ),
          ),

        ],
      ),
    );
  }
}
