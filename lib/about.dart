import 'package:flutter/material.dart';
import 'package:flutter_profiles/main.dart';
import 'package:get/get.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var items = List<String>.generate(100, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("about"),
        ),
        drawer: const Drawer(),
        body: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text(items.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.add),
              title: Text(items[index]),
              subtitle: const Text("Computer"),
              trailing: const Icon(Icons.check),
            );
          },
        ));
  }
}
