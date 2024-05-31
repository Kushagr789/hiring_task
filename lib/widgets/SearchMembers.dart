
import 'package:flutter/material.dart';
import 'package:hiring_task/res/Colors.dart';

class SearchMembersPage extends StatefulWidget {
  @override
  _SearchMembersPageState createState() => _SearchMembersPageState();
}

class _SearchMembersPageState extends State<SearchMembersPage> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: _isSearching
              ? TextField(
            controller: _searchController,
            decoration: InputDecoration(filled: true,fillColor: AppColors.lightGrey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none
              ),
            ),
          )
              : Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              'Search Members',
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.textGrey),
            ),
          )
        ),

        _isSearching ?
        InkWell(
          child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
          onTap: _toggleSearch,
        ):
        IconButton(
          icon: Icon(  Icons.search),
          onPressed: _toggleSearch,
        ),
      ],
    );
  }
}