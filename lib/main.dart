import 'package:fav_app/provider/Like.dart';
import 'package:fav_app/screens/like_Screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> Like()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          "HomePage":(context)=> HomePage(),
          "LikePage":(context)=> LikeScreen(),
        },
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}