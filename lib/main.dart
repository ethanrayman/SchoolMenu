import 'package:flutter/material.dart';
import 'package:school_menu/menu_display.dart';
import 'menu_day.dart';

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'NYC School Lunch Menu',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.orange,
        ),
      ),
      home: const MyHomePage(title: 'NYC School Lunch Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'Palatino',
            color: Colors.grey,
          ),
        ),
      ),
      body: SafeArea(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
          itemCount: MenuDay.meals.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return MenuDisplay(menu: MenuDay.meals[index]);
                      return Text('Menu Today');
                    },
                  ),
                );
              },
              child: buildMenuCard(MenuDay.meals[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildMenuCard(MenuDay menuCard) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(menuCard.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              menuCard.day,
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Arial',
              ),
            )
          ],
        ),
      ),
    );
  }
}
