import 'package:flutter/material.dart';
import 'package:mobx_study/controller/todo_controller.dart';
import 'todo_item.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final controller = TodoController();

  _dialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Add Item'),
            content: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'New Item'),
            ),
            actions: [
              FlatButton(
                onPressed: () => null,
                child: Text('Save'),
              ),
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ListView.builder(
        itemCount: controller.listItems.length,
        itemBuilder: (_, index) {
          var item = controller.listItems[index];
          return TodoItem(
            item: item,
          ); 
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _dialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
