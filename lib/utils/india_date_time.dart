DateTime toIndiaDateTime(DateTime value) =>
    value.toUtc().add(const Duration(hours: 5, minutes: 30));

String formatIndiaDateTime(DateTime value) {
  final indiaTime = toIndiaDateTime(value);
  final date =
      '${indiaTime.day.toString().padLeft(2, '0')} '
      '${_month(indiaTime.month)} ${indiaTime.year}';
  final hour = indiaTime.hour % 12 == 0 ? 12 : indiaTime.hour % 12;
  final time =
      '$hour:${indiaTime.minute.toString().padLeft(2, '0')} '
      '${indiaTime.hour >= 12 ? 'PM' : 'AM'}';
  return '$date, $time IST';
}

String _month(int value) => const [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
][value - 1];
