import 'package:flutter/material.dart';
import '../services/booking_service.dart'; // Ensure this import is here

class BookingForm extends StatefulWidget {
  final double pricePerHour;
  final String roomId;

  const BookingForm({
    super.key,
    required this.pricePerHour,
    required this.roomId,
  });

  @override
  State<BookingForm> createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  DateTimeRange _selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(const Duration(hours: 2)),
  );

  Future<void> _selectDates() async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() => _selectedDates = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: const Text('Select Dates'),
          subtitle: Text(
            '${_selectedDates.start.toString()} - ${_selectedDates.end.toString()}',
          ),
          trailing: const Icon(Icons.calendar_today),
          onTap: _selectDates,
        ),
        const SizedBox(height: 20),
        Text(
          'Total Estimate: \$${(widget.pricePerHour * _selectedDates.duration.inHours).toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            final bookingService = BookingService();
            final success = await bookingService.submitBooking(
              roomId: widget.roomId,
              startTime: _selectedDates.start,
              endTime: _selectedDates.end,
            );
            
            if (success && context.mounted) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Booking successful!'),
                  backgroundColor: Colors.green,
                ),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('Confirm Booking'),
        ),
      ],
    );
  }
}