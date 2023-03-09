import 'package:fav_app/provider/Like.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final likeColor=Provider.of<Like>(context,listen: false);
    print("homePage");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite App"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, "LikePage");
          }, icon: Icon(Icons.favorite))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 50,
                itemBuilder:(BuildContext context,index) {
              return ListTile(
                title: Text("Item ${index}"),
                trailing: Consumer<Like>(builder: (context,value,child){
                  return IconButton(
                    onPressed: () {
                      if(value.data.contains(index)){
                        value.remove(index);
                      }else{
                        value.add(index);
                      }
                    },
                    icon: value.data.contains(index) ? Icon(Icons.favorite,color: Colors.red,): Icon(Icons.favorite_border),
                  );
                }),
              );
            })),

          ],
        ),
      ),
    );
  }
}
