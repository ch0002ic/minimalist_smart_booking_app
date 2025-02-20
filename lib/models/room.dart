class Room {
  final String id;
  final String name;
  final String description;
  final int capacity;
  final String imageUrl;
  final List<String> amenities;
  final double pricePerHour;

  Room({
    required this.id,
    required this.name,
    required this.description,
    required this.capacity,
    required this.imageUrl,
    required this.amenities,
    required this.pricePerHour,
  });
}