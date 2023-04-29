import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_point_0/Navigation/my_Router_delegate.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  static const pageName = '/secondpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            MyRouterDelegate.of(context).pop();
          },
          child: const Icon(Icons.close),
        ),
      ),
    );
  }
}
