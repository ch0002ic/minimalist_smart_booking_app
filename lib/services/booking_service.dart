class BookingService {
  Future<bool> submitBooking({
    required String roomId,
    required DateTime startTime,
    required DateTime endTime,
  }) async {
    // Implementation for API call
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}