import 'package:flutter/material.dart';
import 'package:kuiss/models/car.dart';
import 'package:kuiss/pages/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(cars: cars[index]),
              ),
            );
          },
          title: Text(cars[index].name),
          subtitle: Text("${cars[index].year}"),
          leading: Image.network(
            cars[index].imageUrl,
            width: 50,
            height: 50,
          ), //widget kiri
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.black54,
          ), //widget kanan
        );
      },
    );
  }
}
