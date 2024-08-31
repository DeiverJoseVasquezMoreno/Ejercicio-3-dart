import 'package:dart/src/enums/e_main.dart';
import 'package:dart/src/models/m_casting.dart';

class Client {
  final String code;
  final String name;
  final String address;
  final String phone;
  final String contactPerson;
  final ActivityType activityType;
  final List<Casting> castings;

  Client({
    required this.code,
    required this.name,
    required this.address,
    required this.phone,
    required this.contactPerson,
    required this.activityType,
    required this.castings,
  });
}
