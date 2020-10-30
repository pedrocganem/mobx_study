import 'package:mobx/mobx.dart';
import 'package:mobx_study/model/todo_item_model.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  @observable
  List<TodoItemModel> listItems = [
    TodoItemModel(title: 'Item 1', check: true),
    TodoItemModel(title: 'Item 2', check: false),
    TodoItemModel(title: 'Item 3', check: false),
  ];
}
