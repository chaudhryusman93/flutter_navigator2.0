import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});
  static const pageName = '/Errorpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error page'),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: Row(
            children: [
              const Icon(
                Icons.error_outline,
                size: 100,
              ),
              Text(
                "404, Page Not Found",
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
