import 'package:ecombuy/1aaaa/provider/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DemoPag extends StatelessWidget {
  const DemoPag();

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter App with Provider ",
              style: const TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: const Text("+1",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                      )),
                  onPressed: () => counter.increment(),
                ),
                Text(
                  "${counter.currentCount}",
                  style: const TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () => counter.decrement(),
                    child: const Text(
                      "-1",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
