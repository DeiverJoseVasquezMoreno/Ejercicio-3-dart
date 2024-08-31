import 'package:dart/src/models/m_casting.dart';

class CastingAgent {
  String employeeNumber;
  String dni;
  String name;
  String address;
  List<Casting> castings;

  CastingAgent({
    required this.employeeNumber,
    required this.dni,
    required this.name,
    required this.address,
    this.castings = const [],
  });
}
