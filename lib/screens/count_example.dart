import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  // int count = 5;
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(
      context,
      listen: false,
    );
    print("build" + countProvider.count.toString());
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Center(child: Text("Statment Managment Count example")),
            centerTitle: true,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Consumer<CountProvider>(
                builder: (context, value, child) {
                  return Text(
                    value.count.toString(),
                    style: TextStyle(
                      fontSize: 70,
                      // fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            countProvider.setCount();
            print("Just counter update");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
