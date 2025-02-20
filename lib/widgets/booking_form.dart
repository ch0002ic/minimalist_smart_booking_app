import 'package:flutter/material.dart';

class BookingForm extends StatefulWidget {
  final double pricePerHour;
  
  const BookingForm({super.key, required this.pricePerHour});

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
      ],
    );
  }
}