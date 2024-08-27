import 'package:finishing_bloc/blocs/lamp_bloc/lamp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LampPage extends StatelessWidget {
  const LampPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<LampBloc, LampState>(
              builder: (context, state) {
                if (state is LampIsOn) {
                  return Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  );
                } else if (state is LampIsOff) {
                  return Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  );
                } else {
                  return Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  );
                }
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<LampBloc>().add(OnOffLamp());
              },
              child: const Text(
                'On/Off Lamp',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
