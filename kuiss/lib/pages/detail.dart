import 'package:flutter/material.dart';
import 'package:kuiss/models/car.dart';

class DetailPage extends StatefulWidget {
  final Car cars;

  const DetailPage({super.key, required this.cars});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cars.name),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(widget.cars.imageUrl),

            Text(
              "${widget.cars.name}${widget.cars.brand} ${widget.cars.year}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            Text("Rp. ${widget.cars.price}"),

            Text(widget.cars.description),
          ],
        ),
      ),
    );
  }
}
