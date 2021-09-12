import 'package:flutter/material.dart';
import 'package:learning_provider/models/my_model.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context, listen: false);
    print("Button was rebuilt");
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.green[200],
      child: ElevatedButton(
        child: Text('Do something'),
        onPressed: () {
          myModel.doSomething();
        },
      ),
    );
  }
}
