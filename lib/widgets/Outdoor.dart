import 'package:flutter/material.dart';

import '../res/Colors.dart';
class Outdoor extends StatelessWidget {
  const Outdoor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.ligthRed,width: 1)
          ),
          child: Text('Outdoor',
            style: TextStyle(color: AppColors.ligthRed,fontWeight: FontWeight.w400,fontSize: 12),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.ligthRed,width: 1)
          ),
          child: Text('Outdoor',
            style: TextStyle(color: AppColors.ligthRed,fontWeight: FontWeight.w400,fontSize: 12),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.ligthRed,width: 1)
          ),
          child: Text('Outdoor',
            style: TextStyle(color: AppColors.ligthRed,fontWeight: FontWeight.w400,fontSize: 12),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.ligthRed,width: 1)
          ),
          child: Text('Outdoor',
            style: TextStyle(color: AppColors.ligthRed,fontWeight: FontWeight.w400,fontSize: 12),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.ligthRed,width: 1)
          ),
          child: Text('+1',
            style: TextStyle(color: AppColors.ligthRed,fontWeight: FontWeight.w400,fontSize: 12),
          ),
        ),



      ],
    );
  }
}
