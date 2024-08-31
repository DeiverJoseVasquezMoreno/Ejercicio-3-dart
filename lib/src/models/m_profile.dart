import 'package:dart/src/enums/e_main.dart';
import 'package:dart/src/models/m_candidate.dart';

class Profile {
  String province;
  Gender gender;
  String heightRange;
  String ageRange;
  String hairColor;
  String eyeColor;
  Specialty specialty;
  String experience;
  List<Candidate> candidates;

  Profile({
    required this.province,
    required this.gender,
    required this.heightRange,
    required this.ageRange,
    required this.hairColor,
    required this.eyeColor,
    required this.specialty,
    required this.experience,
    this.candidates = const [],
  });
}
