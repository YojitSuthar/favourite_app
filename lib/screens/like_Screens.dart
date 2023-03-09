import 'package:fav_app/provider/Like.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final likeProvider = Provider.of<Like>(context, listen: false);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite List"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<Like>(builder: (context,value,child){
              return ListView.builder(
                  itemCount: value.data.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                        title: Text("Item ${value.data[index]}"),
                        trailing:IconButton(
                          onPressed: () {
                            if (value.data.contains(value.data[index])) {
                              value.remove(value.data[index]);
                            }
                          },
                          icon: value.data.contains(value.data[index])
                              ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                              : Icon(Icons.favorite_border),
                        ),
                    );
                  });
            }),
          ),
        ],
      ),
    );
  }
}
