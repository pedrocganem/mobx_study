import 'package:flutter/material.dart';
import 'package:mobx_study/model/todo_item_model.dart';

class TodoItem extends StatefulWidget {
  final TodoItemModel item;

  const TodoItem({Key key, this.item}) : super(key: key);
  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.item.title),
      leading: Checkbox(
        value: true,
        onChanged: (bool value) {},
      ),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline_sharp),
        onPressed: () => null,
      ),
    );
  }
}
