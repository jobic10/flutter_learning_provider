import 'package:flutter/material.dart';
import 'package:learning_provider/models/my_model.dart';
import 'package:learning_provider/widgets/my_button.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
      create: (BuildContext context) => MyModel(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('My App')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyButton(),
              Consumer<MyModel>(
                builder: (BuildContext context, MyModel model, child) =>
                    Container(
                  padding: const EdgeInsets.all(35),
                  color: Colors.blue[200],
                  child: Text(model.someValue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
