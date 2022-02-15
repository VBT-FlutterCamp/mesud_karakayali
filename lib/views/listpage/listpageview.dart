
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'package:vbt_to_uselist/views/listpage/model/listmodel.dart';
import 'package:vbt_to_uselist/widget/appbar.dart';



class ListPage extends StatefulWidget {
   ListPage({ Key? key }) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<ListModel> favoritedList = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(context,favoritedList),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(

        child: 
        ListView.builder(
          itemCount: 10,
          itemBuilder: (_,index){
            return Container(
              padding: EdgeInsets.only(right: 5,bottom: 5),

              child: _buildRow(index)
              
            );
        })
        ),
        
      ),
      
    );
  }

  ListTile _buildRow(int index) {
    return ListTile(
    
              title:Text(list[index].name,style: TextStyle(fontSize: 20,),),

              trailing:IconButton(onPressed: ()=>pressfavorite(index),
               icon: list[index].isfavorite==false?Icon(Icons.favorite_outline,color: Colors.black,):Icon(Icons.favorite,color: Colors.red,)),
              );
  }

  void pressfavorite(int index) {
    return setState(() {
                list[index].isfavorite=!list[index].isfavorite;
                if(favoritedList.contains(list[index])){
                  favoritedList.remove(list[index]);
                  
                  print("silindi");
                }
                else{
                  favoritedList.add(list[index]);
                  print("eklendi");
                }
                print(favoritedList.length);
                });
  }
}