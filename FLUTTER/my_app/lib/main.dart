import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice for test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practice for test'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                width: 500,
                height: 200.0,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "I am a big title",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          "I am a medium subtitle",
                          style: TextStyle(
                            color: Color.fromARGB(255, 61, 60, 60),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "I am a normal text",
                          style: TextStyle(
                            color: Color.fromARGB(255, 61, 60, 60),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text("Option #1"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Option #2"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Option #3"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("Option #4"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 30,
                    width: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 30,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 30,
                    width: 100,
                    color: Colors.red,
                  ),
                ],
              ),
              Center(
                child: Text(
                  faker.lorem.sentences(8).join(' '),
                  textAlign: TextAlign.center,
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.access_alarm,
                        size: 30,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.key,
                        size: 30,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Select Alarm",
                          style: TextStyle(
                            color: Color.fromARGB(255, 96, 189, 99),
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 50, 209, 129),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Select Key",
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 63, 21),
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Select Camera",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 210, // Altura definida para el ListView
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Element #${index + 1}"),
                    );
                  },
                ),
              ),
              Center(
                child: Text(
                  faker.lorem.sentences(10).join(' '),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    "END OF APPLICATION",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
			  const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
