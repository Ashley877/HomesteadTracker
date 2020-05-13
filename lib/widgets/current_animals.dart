import 'package:flutter/material.dart';
import 'bottom_nav.dart';

class CurrentAnimals extends StatelessWidget {
  const CurrentAnimals({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 300, height: 400, color: const Color(0xFF2DBD3A));
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    // ListView.separated(
    //   padding: const EdgeInsets.all(8),
    //   itemCount: entries.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       height: 50,
    //       color: Colors.amber[colorCodes[index]],
    //       child: Center(child: Text('Entry ${entries[index]}')),
    //     );
    //   },
    //   separatorBuilder: (BuildContext context, int index) => const Divider(),
    // );
  }
}
