import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_study/controller/controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Controller();

  _textField({String labelText, onChanged, Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('MobX Study'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Observer(
            builder: (_) {
              return _textField(
                labelText: 'name',
                onChanged: controller.client.changeName,
                errorText: controller.validateName,
              );
            },
          ),
          SizedBox(
            height: 40,
          ),
          Observer(
            builder: (_) {
              return _textField(
                labelText: 'email',
                onChanged: controller.client.changeEmail,
                errorText: controller.validateName,
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
          Observer(
            builder: (_) {
              return RaisedButton(
                onPressed: controller.isValid ? () {} : null,
                child: Text('Salvar'),
              );
            },
          )
        ],
      ),
    );
  }
}
