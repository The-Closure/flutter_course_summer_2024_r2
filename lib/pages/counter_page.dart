import 'package:finishing_bloc/blocs/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncreaseCounter());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecreaseCounter());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterHasIncreased) {
              return Text(
                state.increasedCounter.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            } else if (state is CounterHasDecreased) {
              return Text(
                state.decreasedCounter.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

void dskjfkdjfhjsd(){
CounterHasIncreased state = CounterHasIncreased(increasedCounter: 10);
state.increasedCounter;
}


