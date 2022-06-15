import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: Scrollbar(
        scrollbarOrientation: ScrollbarOrientation.left,
        thickness: 10,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/einstein.jpeg'),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.black,
                thickness: 4,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'This is a text widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  debugPrint('ElevatedButton pressed');
                },
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('ElevatedButton pressed');
                },
                child: const Text('Elevated Button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('ElevatedButton pressed');
                },
                child: const Text('Elevated Button'),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('GestureDetector tapped');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text('$isSwitched'),
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitched = newBool;
                  });
                },
              ),
              Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                },
              ),
              Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/640px-Google_Images_2015_logo.svg.png')
            ],
          ),
        ),
      ),
    );
  }
}
