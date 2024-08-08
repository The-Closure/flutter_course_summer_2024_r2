import 'package:flutter/material.dart';
import 'package:quiz_project/model/quiz_model.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatefulWidget {
  QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  PageController pageController = PageController();

  int corcetAnser = 0;
  int wrongAnser = 0;

  List<QuestionModel> question = [
    QuestionModel(
        questionText: "How old are you",
        ansers: ['20', '50', '1000', '0'],
        corectAnserIndex: 0),
    QuestionModel(
        questionText: "What is my name",
        ansers: ['20', 'mosab', 'mhd', 'ahmed'],
        corectAnserIndex: 0),
    QuestionModel(
        questionText: "How old are you",
        ansers: ['20', '50', '1000', '0'],
        corectAnserIndex: 0),
    QuestionModel(
        questionText: "How old are you",
        ansers: ['20', '50', '1000', '0'],
        corectAnserIndex: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromRGBO(243, 189, 107, 1),
              Color.fromRGBO(141, 55, 111, 1),
            ],
          ),
        ),
        child: PageView.builder(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          itemCount: question.length,
          itemBuilder: (context, pageIndex) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 350,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          width: 280,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(218, 139, 217, 1),
                                Color.fromRGBO(243, 189, 107, 1),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '0$corcetAnser ',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          AnimatedContainer(
                                            width: 10 * corcetAnser.toDouble(),
                                            height: 5,
                                            duration:
                                                Duration(milliseconds: 1000),
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          AnimatedContainer(
                                            width: 10 * wrongAnser.toDouble(),
                                            height: 5,
                                            duration:
                                                Duration(milliseconds: 1000),
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          Text(
                                            '  0$wrongAnser',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Question ${pageIndex + 1}/${question.length}',
                                style: TextStyle(
                                    color: Color.fromRGBO(164, 47, 193, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                question[pageIndex].questionText,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 120,
                      child: Stack(children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(218, 139, 217, 1),
                                  Color.fromRGBO(243, 189, 107, 1),
                                ],
                                end: Alignment.bottomCenter,
                                begin: Alignment.topCenter),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(
//value: 0.7,
                              strokeWidth: 3,
                              color: Color.fromRGBO(141, 55, 111, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          left: 20,
                          child: Text(
                            '20',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(141, 55, 111, 1)),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                Container(
                  width: 250,
                  height: 300,
                  child: ListView.builder(
                      itemCount: question[pageIndex].ansers.length,
                      itemBuilder: (context, anserIndex) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 130,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: ListTile(
                              onTap: () {
                                print(wrongAnser);
                                print(corcetAnser);
                                setState(() {});
                                if (anserIndex ==
                                    question[pageIndex].corectAnserIndex) {
                                  corcetAnser = corcetAnser + 1;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Success'),
                                      backgroundColor: Colors.green,
                                      duration: Duration(milliseconds: 500),
                                    ),
                                  );
                                  pageController.nextPage(
                                      duration: Duration(milliseconds: 1),
                                      curve: Curves.bounceIn);
                                } else {
                                  wrongAnser = wrongAnser + 1;
                                  // showCupertinoDialog(
                                  //   context: context,
                                  //   builder: (context) => CupertinoAlertDialog(
                                  //     content: Text("Hello World"),
                                  //     title: Text("Hello"),
                                  //   ),
                                  // );

                                  showDialog(
                                    context: context,
                                    builder: (context) => Dialog(
                                      child: Container(
                                        width: 300,
                                        height: 200,
                                        color: Colors.purple.shade200,
                                        child: Center(
                                          child: Text(
                                            'your corect anser is $corcetAnser\n your wrong anser is $wrongAnser',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          // child: IconButton(
                                          //     onPressed: () {
                                          //       Navigator.pop(context);
                                          //     },
                                          //     icon: Icon(Icons.close)),
                                        ),
                                      ),
                                    ),
                                  );

                                  // showDialog(
                                  //   context: context,
                                  //   builder: (context) => AboutDialog()
                                  // );
                                }
                                // pageController.nextPage(
                                //     duration: Duration(milliseconds: 1),
                                //     curve: Curves.bounceIn);
                              },
                              title: Text(
                                question[pageIndex].ansers[anserIndex],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
