import 'package:flutter/material.dart';
import 'package:flutter_profiles/drawer.dart';
import 'package:flutter_profiles/sheet_content.dart';

class MyBottonSheet extends StatefulWidget {
  const MyBottonSheet({super.key});

  @override
  State<MyBottonSheet> createState() => _MyBottonSheetState();
}

class _MyBottonSheetState extends State<MyBottonSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Botton Sheet"),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const SheetContent();
                    },
                  );
                },
              child: const Text("Open Bottom Sheet"))
          ],
        ),
      ),
    );
  }
}
