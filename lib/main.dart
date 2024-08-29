import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Colors.pink;
  double width = 500;
  Tween<double> opacityAndpaddingTween = Tween<double>(
    begin: 0,
    end: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          curve: Curves.bounceIn,
          width: width,
          height: 500,
          color: color,
          duration: const Duration(seconds: 2),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.yellow;
                    });
                  },
                  child: const Text(
                    'Change color',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      width = 100;
                    });
                  },
                  child: const Text(
                    'Change width',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TweenAnimationBuilder(
                  builder: (context, step, child) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: step * 100,
                      ),
                      child: Opacity(
                        opacity: step,
                        child: const Text(
                          'Hello Flutter',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      ),
                    );
                  },
                  tween: opacityAndpaddingTween,
                  duration: const Duration(
                    seconds: 5,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
