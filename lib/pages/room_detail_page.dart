import 'package:flutter/material.dart';
import '../models/room.dart';

class RoomDetailPage extends StatelessWidget {
  final Room room;

  const RoomDetailPage({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.name)),
      body: Center(child: Text('Details for ${room.name}')),
    );
  }
}