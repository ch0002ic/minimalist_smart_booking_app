import '../models/room.dart';

final List<Room> mockRooms = [
  Room(
    id: '1',
    name: 'Executive Suite',
    description: 'Elegant meeting space for up to 12 people with premium amenities',
    capacity: 12,
    imageUrl: 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d',
    amenities: ['Projector', 'Whiteboard', 'Video Conference', 'Coffee Service'],
    pricePerHour: 75,
  ),
  Room(
    id: '2',
    name: 'Creative Studio',
    description: 'Bright and inspiring space perfect for brainstorming sessions',
    capacity: 8,
    imageUrl: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c',
    amenities: ['Smart TV', 'Standing Desk', 'Apple TV', 'Snack Bar'],
    pricePerHour: 60,
  ),
];