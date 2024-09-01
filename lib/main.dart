import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Color color = Colors.blue;
  double width = 500;
  Tween<double> opacityAndpaddingTween = Tween<double>(
    begin: 0,
    end: 1,
  );
  bool isFav = false;
  // AnimationController animationController = AnimationController(vsync: );
  late AnimationController animationController;
  late Animation<Color?> iconColor;
  late Animation<double> iconSize;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    iconColor = ColorTween(begin: Colors.grey.shade300, end: Colors.red)
        .animate(animationController);

    iconSize = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(
          begin: 100,
          end: 150,
        ),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween(
          begin: 150,
          end: 100,
        ),
        weight: 50,
      )
    ]).animate(animationController);

    animationController.addListener(() {
      print(iconColor.value);
    });

    animationController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          isFav = true;
        } else {
          isFav = false;
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          curve: Curves.bounceIn,
          width: width,
          height: 800,
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
                ),
                const SizedBox(
                  height: 50,
                ),
                AnimatedBuilder(
                  builder: (context, child) {
                    return InkWell(
                      onTap: () {
                        isFav
                            ? animationController.reverse()
                            : animationController.forward();
                      },
                      child: Icon(
                        Icons.favorite,
                        size: iconSize.value,
                        color: iconColor.value,
                      ),
                    );
                  },
                  animation: animationController,
                ),
                SizedBox(
                  height: 20,
                ),
                Lottie.network(
                  'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
