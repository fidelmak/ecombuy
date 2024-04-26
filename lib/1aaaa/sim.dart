import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  int _counter = 0;

  void _increment() {
    setState(() => _counter++);
  }

  void _decrement() {
    setState(() => {
          if (_counter == 0) {_counter} else {_counter--}
        });
  }

  late String value;
  @override
  void initState() {
    super.initState();
    value = "counterApp ";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$value",
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
                onPressed: _increment,
              ),
              Text(
                "$_counter",
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  onPressed: _decrement,
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
    );
  }
}
