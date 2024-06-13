import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas UTS'),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(9, (index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    color: Color.fromARGB(255, 228, 75, 152),
                  );
                }),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: Text('Judul'),             
              subtitle: Text('asik'),                     
              trailing: Icon(Icons.remove_circle_rounded),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 211, 66, 66),
              ),
              title: Text('Judul'),
              subtitle: Text('asik'),
              trailing: Icon(Icons.remove_circle_rounded),
            ),
          ],
        ),
      ),
    );
  }
}