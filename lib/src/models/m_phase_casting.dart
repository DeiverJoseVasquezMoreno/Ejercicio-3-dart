import 'package:dart/src/models/m_casting.dart';
import 'package:dart/src/models/m_individual_test.dart';

class PhaseCasting {
  int phaseNumber;
  DateTime startDate;
  String phaseId;
  List<IndividualTest> tests;
  Casting? casting;

  PhaseCasting({
    required this.phaseNumber,
    required this.startDate,
    required this.phaseId,
    this.tests = const [],
    this.casting,
  });
}
