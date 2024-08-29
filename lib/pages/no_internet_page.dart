import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(5, 10),
                color: Colors.black.withOpacity(0.5),
              )
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(
                15,
              ),
            ),
          ),
          child: Column(
            children: [
              const Icon(
                Icons.error,
                color: Colors.red,
                size: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                errorMessage,
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
