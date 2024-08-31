import 'package:dart/src/models/m_candidate.dart';
import 'package:dart/src/models/m_phase_casting.dart';

class IndividualTest {
  int number;
  DateTime date;
  String room;
  String description;
  List<Candidate> candidates;
  PhaseCasting? phase;

  IndividualTest({
    required this.number,
    required this.date,
    required this.room,
    required this.description,
    this.candidates = const [],
    this.phase,
  });
}
