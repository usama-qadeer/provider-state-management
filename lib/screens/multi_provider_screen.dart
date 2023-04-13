import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/multi_provider.dart';

class MultiProviderScreen extends StatefulWidget {
  const MultiProviderScreen({super.key});

  @override
  State<MultiProviderScreen> createState() => _MultiProviderScreenState();
}

class _MultiProviderScreenState extends State<MultiProviderScreen> {
  //double value = 1.0;
  @override
  Widget build(BuildContext context) {
    print("Build");
    final changeVal = Provider.of<MultiProviderClass>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Multi Provider Screen"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<MultiProviderClass>(
              builder: (context, value, child) {
                return Slider(
                  min: 0,
                  max: 1,
                  value: value.value,
                  onChanged: (val) {
                    // setState(() {
                    //   // value = value;
                    // });
                    value.setValue(val);
                    print(val);
                  },
                );
              },
            ),
            Consumer<MultiProviderClass>(
              builder: (context, value, child) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value),
                        ),
                        child: Center(child: Text("data")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value),
                        ),
                        child: Center(child: Text("data")),
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
