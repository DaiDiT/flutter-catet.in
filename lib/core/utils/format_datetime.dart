String formatDateTimeDifference(DateTime date) {
  final now = DateTime.now();
  final dif = now.difference(date);

  if (dif.inDays > 0) {
    return dif.inDays == 1? 'Kemarin' : '${dif.inDays} hari yang lalu';
  } else if (dif.inHours > 0) {
    return '${dif.inHours} jam yang lalu';
  } else if (dif.inMinutes > 0) {
    return '${dif.inMinutes} menit yang lalu';
  } else {
    return 'Baru saja';
  }
}