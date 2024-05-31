import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiring_task/res/Colors.dart';
import 'package:hiring_task/widgets/ExpandAppBar.dart';
import 'package:hiring_task/widgets/ImageCard.dart';
import 'package:hiring_task/widgets/MemberList.dart';
import 'package:hiring_task/widgets/Outdoor.dart';
import 'package:hiring_task/widgets/SearchMembers.dart';
import 'package:hiring_task/widgets/collapsibleText.dart';

import '../widgets/CustomContainer.dart';
import '../widgets/MemberCard.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isMuted = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isMuted = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 60,
            expandedHeight: 300,
            pinned: true,
            floating: true,
            backgroundColor: AppColors.red,
            flexibleSpace: FlexibleSpaceBar(
              background: ExpandAppBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: size.height*2,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),child: CollapsibleText(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                      'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                      'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                    maxLines: 5,
                  ),),
                  Padding(padding: EdgeInsets.only(left:20,right: 20,top: 20,bottom: 10),
                    child: Outdoor(),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left:20,right: 20),child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Media, docs and links',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.black,)
                          ],
                        ),),
                        SizedBox(height: 10,),
                        Container(
                          height: 100,
                          padding: EdgeInsets.only(left: 20),
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount:5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                            return ImageCard();
                          }),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(padding: EdgeInsets.only(left:20,right: 20),child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Mute notification',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Container(

                        height: 10,
                        child: Switch(
                          value: _isMuted,
                          onChanged: _toggleSwitch,
                          activeColor: Colors.red,
                          inactiveThumbColor: AppColors.grey,
                          inactiveTrackColor: Colors.white,
                        ),
                      )
                    ],
                  ),),
                  SizedBox(height: 10,),
                  Customcontainer(text:'Clear chat',ic: Icons.delete_outline_outlined,col: Colors.black,),
                  Customcontainer(text: 'Encryption', col: Colors.black, ic: Icons.lock_outline),
                  Customcontainer(text: 'Exit Community', col: AppColors.textRed, ic: Icons.logout),
                  Customcontainer(text: 'Report', col: AppColors.textRed, ic: Icons.thumb_down_alt_outlined),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left:20,right: 20),
                    height: 40,
                    child: SearchMembersPage(),
                  ),
                  Container(
                    height: size.height,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return MemberCard();
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
