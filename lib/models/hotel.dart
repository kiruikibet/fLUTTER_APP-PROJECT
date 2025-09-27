
class Hotel {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String imageUrl;

  Hotel({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.imageUrl,
  });
}

final List<Hotel> hotels = [
  Hotel(id: 1, name: "Sunset Resort", desc: "Luxury resort with ocean views.", price: "\$120/night", imageUrl: "https://picsum.photos/400?1"),
  Hotel(id: 2, name: "Grand Palace", desc: "Elegant hotel in the city center.", price: "\$90/night", imageUrl: "https://picsum.photos/400?2"),
  Hotel(id: 3, name: "Ocean View", desc: "Beachfront hotel with stunning sunsets.", price: "\$110/night", imageUrl: "https://picsum.photos/400?3"),
  Hotel(id: 4, name: "Mountain Lodge", desc: "Peaceful lodge in the mountains.", price: "\$80/night", imageUrl: "https://picsum.photos/400?4"),
  Hotel(id: 5, name: "Royal Suites", desc: "Modern suites with premium service.", price: "\$150/night", imageUrl: "https://picsum.photos/400?5"),
  Hotel(id: 6, name: "Safari Inn", desc: "Stay close to nature and wildlife.", price: "\$100/night", imageUrl: "https://picsum.photos/400?6"),
  Hotel(id: 7, name: "City Comfort", desc: "Affordable comfort in the city.", price: "\$60/night", imageUrl: "https://picsum.photos/400?7"),
  Hotel(id: 8, name: "Golden Palm", desc: "Tropical getaway with palm gardens.", price: "\$130/night", imageUrl: "https://picsum.photos/400?8"),
  Hotel(id: 9, name: "Blue Lagoon", desc: "Relax at the lagoon with spa services.", price: "\$140/night", imageUrl: "https://picsum.photos/400?9"),
  Hotel(id: 10, name: "Urban Retreat", desc: "Stylish retreat in downtown.", price: "\$100/night", imageUrl: "https://picsum.photos/400?10"),
  Hotel(id: 11, name: "Lakeside Villa", desc: "Enjoy lakeside views and serenity.", price: "\$115/night", imageUrl: "https://picsum.photos/400?11"),
  Hotel(id: 12, name: "Forest Haven", desc: "Stay surrounded by nature.", price: "\$95/night", imageUrl: "https://picsum.photos/400?12"),
  Hotel(id: 13, name: "White Sands", desc: "Luxury white-sand beach hotel.", price: "\$160/night", imageUrl: "https://picsum.photos/400?13"),
  Hotel(id: 14, name: "Coastal Breeze", desc: "Charming coastal views and comfort.", price: "\$125/night", imageUrl: "https://picsum.photos/400?14"),
  Hotel(id: 15, name: "Hilltop Hotel", desc: "Breathtaking hilltop views.", price: "\$105/night", imageUrl: "https://picsum.photos/400?15"),
  Hotel(id: 16, name: "Emerald Resort", desc: "Relax in an emerald paradise.", price: "\$145/night", imageUrl: "https://picsum.photos/400?16"),
  Hotel(id: 17, name: "Desert Rose", desc: "Unique desert lodge experience.", price: "\$135/night", imageUrl: "https://picsum.photos/400?17"),
  Hotel(id: 18, name: "Serenity Lodge", desc: "Quiet lodge for total relaxation.", price: "\$110/night", imageUrl: "https://picsum.photos/400?18"),
  Hotel(id: 19, name: "Crystal Bay", desc: "Crystal clear waters at your doorstep.", price: "\$170/night", imageUrl: "https://picsum.photos/400?19"),
  Hotel(id: 20, name: "Garden Inn", desc: "Affordable stay with garden views.", price: "\$70/night", imageUrl: "https://picsum.photos/400?20"),
];
