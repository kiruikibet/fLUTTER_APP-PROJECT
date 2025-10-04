import 'package:flutter/material.dart';
import 'models/hotel.dart';
import 'hotel_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E0), // soft light green to match detail page
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 102, 152, 245),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Hotel Booking",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 hotels per row
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_ ) => HotelDetailPage(hotel: hotel)),
              );
            },
            child: Card(
              color: Colors.white,
              elevation: 4,
              child: SizedBox(
                height: 260,
                child: Column(
                  children: [
                    // image takes top half of the card
                    SizedBox(
                      height: 130,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                        child: Image(
                          image: ResizeImage(AssetImage(hotel.imageUrl), width: 720),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Container(
                            color: const Color.fromARGB(255, 26, 183, 54),
                            child: const Icon(Icons.broken_image, size: 40, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    // name centered below image
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            hotel.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
