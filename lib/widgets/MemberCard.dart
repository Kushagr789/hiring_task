import 'package:flutter/material.dart';

import '../res/Colors.dart';
class MemberCard extends StatefulWidget {
  const MemberCard({super.key});

  @override
  State<MemberCard> createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  bool _isAdded = false;
  void _toggle() {
    setState(() {
      _isAdded = !_isAdded;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/image 110.jpg'),
        radius: 30.0,
      ),
      title: Text('Yashika',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
      subtitle: Text("29, India",style: TextStyle(color: AppColors.textGrey,fontWeight: FontWeight.w600,fontSize: 12),),
      trailing: InkWell(
        child: Container(
          height: 32,
          width: 100,
          decoration: BoxDecoration(
            color: _isAdded?AppColors.grey:AppColors.ligthRed,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              _isAdded?'Following':'Add',style: TextStyle(
                color: Colors.white,
                fontSize: 16,fontWeight: FontWeight.w600
            ),
            ),
          ),
        ),
        onTap: (){
          _toggle();
        },
      ),
    );
  }
}
