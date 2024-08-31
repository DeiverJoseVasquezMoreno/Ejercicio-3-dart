import 'package:dart/src/enums/e_main.dart';
import 'package:dart/src/models/m_individual_test.dart';
import 'package:dart/src/models/m_profile.dart';
import 'package:dart/src/models/m_representative.dart';

class Candidate {
  String code;
  String name;
  String address;
  String phone;
  DateTime birthDate;
  String photo;
  String province;
  Gender gender;
  String heightRange;
  String ageRange;
  String hairColor;
  String eyeColor;
  Specialty specialty;
  String experience;
  Representative? representative;
  Profile profile;
  List<IndividualTest> tests;

  Candidate({
    required this.code,
    required this.name,
    required this.address,
    required this.phone,
    required this.birthDate,
    required this.photo,
    required this.province,
    required this.gender,
    required this.heightRange,
    required this.ageRange,
    required this.hairColor,
    required this.eyeColor,
    required this.specialty,
    required this.experience,
    this.representative,
    required this.profile,
    this.tests = const [],
  });
}
