import 'package:flutter/material.dart';
import 'models/hotel.dart';

class HotelDetailPage extends StatelessWidget {
  final Hotel hotel;
  const HotelDetailPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hotel.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(hotel.imageUrl, height: 250, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hotel.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(hotel.desc, style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  Text("Price: ${hotel.price}", style: const TextStyle(fontSize: 18, color: Colors.green)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Booking for ${hotel.name} coming soon!")),
                      );
                    },
                    child: const Text("Book Now"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
