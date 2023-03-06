import 'package:flutter/material.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  final void Function() onPressed;
  const NoInternetConnectionWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Not able to connect internet'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Retry'),
            onPressed:(){
              onPressed();
            }
          ),
        ],
      ),
    );
  }
}
