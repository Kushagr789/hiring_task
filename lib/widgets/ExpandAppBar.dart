import 'package:flutter/material.dart';

import '../res/Colors.dart';
class ExpandAppBar extends StatelessWidget {
  const ExpandAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(

          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/image 121.jpg'),fit: BoxFit.fill)
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            width: double.infinity,
            height: 80,
            color: AppColors.red,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'The weeknd',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 22),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Community ',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),),
                          Container(height: 7,width: 7,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                          Text(' +11k Members',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignInside,width: 1),
                  ),
                  child: Center(
                    child: Icon(Icons.share,color: Colors.white,size: 18,),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 40,
            left:20,
            child: Container(
              height:35,
              width:35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(0, 0, 0, 0.7)
              ),
              child: Center(
                child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,size: 30
                ),
              ),
            )
        )

      ],
    );
  }
}
