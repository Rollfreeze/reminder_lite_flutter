/// A model that represents and contains all about some certain reminder.
class Reminder {
  final String id;
  final String title;
  final String notes;
  final DateTime date;

  const Reminder({
    required this.id,
    required this.title,
    required this.notes,
    required this.date,
  });
}
