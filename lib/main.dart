import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

int counter = 0;

// ? Navigation Example
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400,
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    helperText: "UserName",
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.black,
                    // fillColor: Colors.red,
                    // filled: true,
                    suffixIcon: Icon(Icons.visibility),
                    hintText: 'Hello World',
                    // hintText: 'Email',
                    // labelText: "Your Email",
                    // label: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hello From Home ${counter}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: 335,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255, 15, 109, 225),
                  ),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counter++;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoPage(),
            ));
      }),
    );
  }
}

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          child: Text(
            "This is an Info Page ${counter}",
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            child: Text('1'),
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
              Column(
                children: [
                  Text('hello'),
                  Text('World'),
                ],
              ),
              Icon(Icons.abc_rounded),
              Icon(Icons.abc_rounded),
            ],
          ),
        ],
      ),
    );
  }
}

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        //   child: Container(
        //     color: Colors.teal,
        //     width: 50,
        //     height: 50,
        //   ),
        // ),
        Spacer(
          flex: 6,
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        Spacer(
          flex: 5,
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        Spacer(
          flex: 2,
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
        ListTile(
          onTap: () {
            print('onTap');
          },
          onLongPress: () {
            print("onLongPress");
          },
          title: Text('hello'),
          subtitle: Text('World'),
          trailing: Icon(Icons.access_alarm_sharp),
          leading: Container(width: 50, height: 50, color: Colors.black),
        ),
      ],
    ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blueGrey,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 200,
              height: 20,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class Exambel extends StatelessWidget {
  const Exambel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 1000,
          width: 200,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                leading: Icon(Icons.remove),
                title: Center(child: Text('Share Content')),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.call_end_outlined),
                  ),
                  title: Text('camera'),
                ),
              )
            ],
          )),
    );
  }
}

class ListViewEx extends StatelessWidget {
  const ListViewEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(),
                Text("ahmad"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(),
                Text("mhd"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(),
                Text('ali'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
