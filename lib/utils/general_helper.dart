class GeneralHelper {
  String dateDiff(String start, String end) {
    DateTime _start = DateTime.parse(start);
    DateTime _end = DateTime.parse(end);
    final difference = _end.difference(_start).inDays;
    return difference.toString();
  }

  String rupiah(value, {String separator = '.', String trailing = ''}) {
    return "Rp " +
        value.toString().replaceAllMapped(
            new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
            (Match m) => '${m[1]}' + separator) +
        trailing;
  }

  /// Convert [DateTime] to Indonesia specific date
  String tanggal(DateTime date, {bool shortMonth = false}) {
    if (date != null)
      return "${date.day} ${_convertToLocalMonth(date.month, shortMonth)} ${date.year}";
    return "";
  }

  List _longMonth = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];
  List _shortMonth = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'Mei',
    'Jun',
    'Jul',
    'Agu',
    'Sep',
    'Okt',
    'Nov',
    'Des'
  ];

  String _convertToLocalMonth(int month, bool shortMonth) {
    if (shortMonth) return _shortMonth[month - 1];
    return _longMonth[month - 1];
  }

  /// Get Only Month Name from [DateTime]
  String bulan(DateTime date) {
    return _convertToLocalMonth(date.month, false);
  }
}
