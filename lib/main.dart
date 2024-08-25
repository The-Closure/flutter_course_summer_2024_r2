import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_session/counter_bloc/counter_event.dart';
import 'package:github_session/counter_bloc/counter_manager.dart';
import 'package:github_session/counter_bloc/counter_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path:
            'assets/translate', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: CounterPageWithBloc(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ValueNotifier<int> counter = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello").tr(),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: counter,
          builder: (context, value, child) {
            return Text(
              value.toString(),
              style: TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("New").tr(),
        onPressed: () {
          if (context.locale.languageCode == 'ar') {
            context.setLocale(Locale('en'));
          } else {
            context.setLocale(Locale('ar'));
          }
        },
      ),
    );
  }
}

class CounterPageWithBloc extends StatelessWidget {
  const CounterPageWithBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterManager(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                BlocBuilder<CounterManager, CounterState>(
                  builder: (context, state) {
                    if (state is TheNumberHasBeenAdded) {
                      return Text("1");
                    } else if (state is TheNumberHasBeedSubbed){
                      return Text("-1");
                    }else {
                      return Text("init");
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterManager>().add(Increament());
                    },
                    child: Text("Increament"))
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            context.read<CounterManager>().add(Decreament());
          }),
        );
      }),
    );
  }
}
