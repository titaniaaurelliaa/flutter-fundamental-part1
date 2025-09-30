import 'package:flutter/material.dart';

class FabWidgetWithLogic extends StatelessWidget {
  const FabWidgetWithLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FAB Example'),
        ),
        body: const Center(
          child: Text('Tekan FAB di pojok kanan bawah'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tampilkan snackbar ketika FAB ditekan
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Tombol Like ditekan!'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          tooltip: 'Like', // Tooltip saat long press
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}