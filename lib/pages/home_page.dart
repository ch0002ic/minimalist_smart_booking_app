import 'package:flutter/material.dart';
import '../widgets/room_card.dart';
import '../models/room.dart';
import '../constants/mock_rooms.dart';
import '../pages/room_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: ColoredBox(
                color: Colors.grey.shade50,
                child: const Center(
                  child: Text(
                    'Find Your Perfect Space',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => RoomCard(
                  room: mockRooms[index],
                  onTap: () => _navigateToDetail(context, mockRooms[index]),
                ),
                childCount: mockRooms.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToDetail(BuildContext context, Room room) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RoomDetailPage(room: room),
      ),
    );
  }
}