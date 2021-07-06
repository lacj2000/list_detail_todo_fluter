import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_details/Todo.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context)!.settings.arguments as Todo;
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
