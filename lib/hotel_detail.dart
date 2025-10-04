import 'package:flutter/material.dart';
import 'models/hotel.dart';

class HotelDetailPage extends StatelessWidget {
  final Hotel hotel;
  const HotelDetailPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E0), // soft light green background
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 116, 218),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          hotel.name,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title moved back above the image

            // Removed duplicate heading (AppBar now displays the title centered and styled)

            // Image enclosed in a template card so it visually merges with product cards
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0, top: MediaQuery.of(context).size.height * 0.03),
                child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image(
                      image: ResizeImage(AssetImage(hotel.imageUrl), width: 1000),
                        height: MediaQuery.of(context).size.height * 0.5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                        color: Colors.grey[300],
                        child: const Icon(Icons.broken_image, size: 64, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
              // Description presented inside a Card template for better visual grouping
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('About this hotel', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xFF17233A), letterSpacing: 0.2)),
                        const SizedBox(height: 8),
                        Text(hotel.desc, style: const TextStyle(fontSize: 15, height: 1.35)),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Price: ${hotel.price}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            // Centered Book button below the template card (larger text + gradient)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Booking for ${hotel.name} is being processed!")),
                    );
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF2BC06B), Color(0xFF0A8F3C)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                    child: const Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        shadows: [Shadow(blurRadius: 2, color: Colors.black26, offset: Offset(0, 1))],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
