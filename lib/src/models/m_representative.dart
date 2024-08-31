import 'package:dart/src/models/m_candidate.dart';

class Representative {
  String name;
  String address;
  String phone;
  List<Candidate> candidates;

  Representative({
    required this.name,
    required this.address,
    required this.phone,
    this.candidates = const [],
  });
}
