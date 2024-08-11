import 'package:flutter/material.dart';
import 'package:responsive_adaptive_project/model/quiz_model.dart';
import 'package:responsive_adaptive_project/service/service_product.dart';

void main() async {
  Product data = await getOneProduct();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataFromAPIScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return SafeArea(
            minimum: const EdgeInsets.only(top: 20),
            child: Center(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.amber,
                        width: width / 4,
                        height: height / 8,
                      ),
                    );
                  }),
            ),
          );
        } else if (constraints.maxWidth > 500 && constraints.maxWidth < 700) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      Text('favorite'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.settings),
                      Text('settings'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.search),
                      Text('search'),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: width / 1.5,
                    height: height,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                              width: width / 8,
                              height: height / 6,
                            ),
                          );
                        }),
                  )
                ],
              ),
            ],
          );
        } else {
          return Container(
            width: 100,
            height: 100,
            color: Colors.teal,
          );
        }
      }),
    );
  }
}

class ExpandedAndFliexbel extends StatelessWidget {
  const ExpandedAndFliexbel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [CircleAvatar(radius: 20), Text('UserName')],
        ),
      ),
      body: Row(
        children: [
          Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Text(''),
            );
          }),
          Flexible(
            // flex: 2,
            //  fit: FlexFit.loose,
            child: Tooltip(
              message: 'hi',
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ),
          Flexible(
            // flex: 4,
//fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int correntPageIndex = 0;

  List<Widget> pageBottomNavBar = [
    ExpandedAndFliexbel(),
    Text("Home"),
    Text('Search'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: correntPageIndex,
        onTap: (pageIndex) {
          setState(() {});
          correntPageIndex = pageIndex;
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
      ),
      body: Center(
        child: pageBottomNavBar[correntPageIndex],
      ),
    );
  }
}

class DataFromAPIScreen extends StatelessWidget {
  const DataFromAPIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getOneProduct(),
          builder: (context, snapShot) {
            return ListTile(
              title: Text(snapShot.data!.title),
              leading: Text(snapShot.data!.category),
              subtitle: Text(snapShot.data!.price.toString()),
            );
          }),
    );
  }
}
