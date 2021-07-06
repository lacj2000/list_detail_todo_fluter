import 'package:flutter/material.dart';
import 'package:list_details/DetailScreen.dart';
import 'package:list_details/Todo.dart';

final todos = List.generate(
  20,
  (i) => Todo(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  ),
);

void main() {
  runApp(MaterialApp(
    initialRoute: '/todos',
    routes: {
      '/todos': (context) => TodosScreen(todos: todos),
      '/detail': (context) => DetailScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  TodosScreen({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: todos[index],
                );
              },
            );
          }),
    );
  }
}
