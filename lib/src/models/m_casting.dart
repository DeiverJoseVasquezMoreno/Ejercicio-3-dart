import 'package:dart/src/enums/e_main.dart';
import 'package:dart/src/models/m_casting_agent.dart';
import 'package:dart/src/models/m_client.dart';
import 'package:dart/src/models/m_phase_casting.dart';

class Casting {
  String code;
  String name;
  String description;
  DateTime hiringDate;
  double cost;
  CastingType type;
  List<PhaseCasting> phases;
  CastingAgent? agent;
  Client? client;

  Casting({
    required this.code,
    required this.name,
    required this.description,
    required this.hiringDate,
    required this.cost,
    required this.type,
    this.phases = const [],
    this.agent,
    this.client,
  });
}
