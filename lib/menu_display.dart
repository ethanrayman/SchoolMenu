import 'package:flutter/material.dart';
import 'menu_day.dart';

class MenuDisplay extends StatefulWidget {
  final MenuDay menu;

  const MenuDisplay({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  _MenuDisplayState createState() {
    return _MenuDisplayState();
  }
}

class _MenuDisplayState extends State<MenuDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.menu.day,
          style: const TextStyle(
            fontFamily: 'Palatino',
            color: Colors.grey,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.menu.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              '${widget.menu.day} Menu',
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.menu.options.length,
                itemBuilder: (BuildContext context, int index) {
                  final oneMeal = widget.menu.options[index];
                  return Text('${oneMeal}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
