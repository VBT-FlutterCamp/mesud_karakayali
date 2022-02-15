 import 'package:flutter/material.dart';
import 'package:vbt_to_uselist/views/favoritedpage/favoritelist_page.dart';

AppBar appBar(BuildContext context,List list) {
    return AppBar(title: Text("List"),actions: [IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(
        builder: (_)=>FavoriteListPage(list)));
    }, icon: Icon(Icons.menu))],);
  }