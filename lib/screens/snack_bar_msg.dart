
import 'package:flutter/material.dart';

void showSnackBarMsg(BuildContext context, String msg,[bool isError=false]){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg,style: TextStyle(color: isError?Colors.red:null),)));
}