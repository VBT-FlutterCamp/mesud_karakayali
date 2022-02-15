library favoritelist_page.dart;




import 'package:flutter/material.dart';
import 'package:vbt_to_uselist/views/listpage/listpageview.dart';
import 'package:vbt_to_uselist/views/listpage/model/listmodel.dart';
import 'package:vbt_to_uselist/widget/appbar.dart';



class FavoriteListPage extends StatefulWidget {
  final List favoriteList;


  FavoriteListPage(this.favoriteList);

  @override
  State<FavoriteListPage> createState() => _FavoriteListPageState();
}

class _FavoriteListPageState extends State<FavoriteListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(
        
          
        
        child: 
        ListView.builder(
          itemCount:widget.favoriteList.length,
          itemBuilder: (_,index){
            return Container(
              padding: EdgeInsets.only(right: 5,bottom: 5),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(widget.favoriteList[index].name,style: TextStyle(fontSize: 20,),),
                IconButton(onPressed: (){
                  setState(() {
                    ListPage();
                  widget.favoriteList[index].isfavorite=!widget.favoriteList[index].isfavorite;
                  
                    widget.favoriteList.removeAt(index);
                    
                    print("silindi");
                 
                 
                  });
                }, icon: Icon(Icons.favorite,color: Colors.red,)),
              ],
            ));
        })
        ),
        
      ),
      
    );
  }
}