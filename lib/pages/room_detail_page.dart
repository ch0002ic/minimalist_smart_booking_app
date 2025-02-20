import 'package:flutter/material.dart';
import '../models/room.dart';
import '../widgets/amenity_chip.dart';
import '../widgets/booking_form.dart';
import '../widgets/image_carousel.dart';

class RoomDetailPage extends StatelessWidget {
  final Room room;

  const RoomDetailPage({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCarousel(imageUrls: [room.imageUrl]),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    room.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 24),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: room.amenities
                        .map((amenity) => AmenityChip(label: amenity))
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  BookingForm(
                    pricePerHour: room.pricePerHour,
                    roomId: room.id,
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