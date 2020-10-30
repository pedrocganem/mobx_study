import 'package:mobx/mobx.dart';
part 'todo_item_model.g.dart';

class TodoItemModel = _TodoItemModelBase with _$TodoItemModel;

abstract class _TodoItemModelBase with Store {
  _TodoItemModelBase({this.title, this.check});
  @observable
  String title;

  @observable
  bool check;

  @action
  setTitle(String value) => title = value;

  @action
  setCheck(bool value) => check = value;
}
