/// A model that represents and contains all about some certain reminder.
class Reminder {
  final String id;
  final String title;
  final String notes;
  final DateTime? date;

  const Reminder({
    required this.id,
    required this.title,
    required this.notes,
    required this.date,
  });

  // Factory constructor to create an instance from JSON
  factory Reminder.fromJson(Map<String, dynamic> json) => Reminder(
        id: json['id'] as String,
        title: json['title'] as String,
        notes: json['notes'] as String,
        date: json['date'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(
                isUtc: true,
                ((json['date'] as double) * 1000).toInt(),
              ),
      );

  /// A message with all properties of reminder instance.
  String get propertiesFormated => "id: '$id', title: '$title', notes: '$notes', date: '$dateFormated'";

  /// Swift-like date formation.
  String get dateFormated =>
      '${date?.year}-${date?.month}-${date?.day} ${date?.hour}:${date?.minute}:${date?.second} ${date?.timeZoneName}';
}
