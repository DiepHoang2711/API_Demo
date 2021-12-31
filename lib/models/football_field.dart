import 'user.dart';

class FootballField {
  final int fieldId;
  final String fieldName;
  final String location;
  final User user;
  final bool status;

  FootballField({required this.fieldId,required this.fieldName,required this.location,required this.user,required this.status });

  factory FootballField.fromJson(Map<String, dynamic> json) {
    return FootballField(
      fieldId: json["fieldId"] as int,
      fieldName: json["fieldName"] as String,
      location: json["location"] as String,
      user: json["user"] as User,
      status: json["status"] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "fieldId": fieldId,
      "fieldName": fieldName,
      "location": location,
      "user": user,
      "status": status
    };
  }
}
