import 'package:flutter/material.dart';

// class Animals {
//   static List<Animal> animals = [
//     Animal(
//       id: "1",
//       image: "assets/gizmo.jpg",
//       name: "Gizmo"),
//   ];
//   static Animal getBreedById(id) {
//     return animals.where((p) => p.id == id).first;
//   }
// }

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'Alpacas',
    <Entry>[
      Entry('Pixel'),
      Entry('Brownie'),
      Entry('Bruce'),
      //   <Entry>[
      //     Entry('Item A0.1'),
      //     Entry('Item A0.2'),
      //     Entry('Item A0.3'),
      //   ],
      // ),
      // Entry('Section A1'),
      // Entry('Section A2'),
    ],
  ),
  Entry(
    'Dogs',
    <Entry>[
      Entry('Gizmo'),
      Entry('Bubba'),
    ],
  ),
  Entry(
    'Cats',
    <Entry>[
      Entry('Vader'),
      Entry('Mesha'),
      // Entry(
      //   'Section C2',
      //   <Entry>[
      //     Entry('Item C2.0'),
      //     Entry('Item C2.1'),
      //     Entry('Item C2.2'),
      //     Entry('Item C2.3'),
      // ],
      //),
    ],
  ),
];

// class ExpansionTileSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       height: 400,
//       color: Colors.transparent,
//       child: ListView.builder(
//         itemBuilder: (BuildContext context, int index) =>
//             EntryItem(data[index]),
//         itemCount: data.length,
//       ),
//     );
//   }
// }

// The entire multilevel list displayed by this app.
// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
// class EntryItem extends StatelessWidget {
//   const EntryItem(this.entry);

//   final Entry entry;

//   Widget _buildTiles(Entry root) {
//     if (root.children.isEmpty) return ListTile(title: Text(root.title));
//     return ExpansionTile(
//       key: PageStorageKey<Entry>(root),
//       title: Text(root.title),
//       children: root.children.map(_buildTiles).toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildTiles(entry);
//   }

// void main() {
//   runApp(ExpansionTileSample());
// }
