class AppDateUtils {
  // Returns a list of the next 7 days from today
  static final sevenDaysFromNow = List.generate(7, (index) {
    final date = DateTime.now().add(Duration(days: index + 1));
    return date;
  });

  static List<String> weekDayIntToDays(List<int> weekdatInts) {
    return weekdatInts.map((day) {
      switch (day) {
        case DateTime.monday:
          return 'Monday';
        case DateTime.tuesday:
          return 'Tuesday';
        case DateTime.wednesday:
          return 'Wednesday';
        case DateTime.thursday:
          return 'Thursday';
        case DateTime.friday:
          return 'Friday';
        case DateTime.saturday:
          return 'Saturday';
        case DateTime.sunday:
          return 'Sunday';
        default:
          return '';
      }
    }).toList();
  }

  static List<int> daysIntoWeekdayInts(List<String> days) {
    return days.map((day) {
      switch (day) {
        case 'Monday':
          return DateTime.monday;
        case 'Tuesday':
          return DateTime.tuesday;
        case 'Wednesday':
          return DateTime.wednesday;
        case 'Thursday':
          return DateTime.thursday;
        case 'Friday':
          return DateTime.friday;
        case 'Saturday':
          return DateTime.saturday;
        case 'Sunday':
          return DateTime.sunday;
        default:
          return 0;
      }
    }).toList();
  }
}
