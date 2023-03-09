import 'package:flutter/foundation.dart';

class Like with ChangeNotifier{

  final List <int> _data=[];
  List <int> get data=>_data;

  void add(int value){
    data.add(value);
    notifyListeners();
  }
  void remove(int value){
    data.remove(value);
    notifyListeners();
  }

}