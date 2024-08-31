import 'dart:core';

import 'package:dart/src/enums/e_main.dart';
import 'package:dart/src/models/m_main.dart';

void main() {
  // Crear perfiles
  Profile perfil1 = Profile(
    province: "Madrid",
    gender: Gender.female,
    heightRange: "1.70m",
    ageRange: "25-30",
    hairColor: "Rubio",
    eyeColor: "Azules",
    specialty: Specialty.model,
    experience: "5 años",
  );

  Profile perfil2 = Profile(
    province: "Barcelona",
    gender: Gender.male,
    heightRange: "1.80m",
    ageRange: "30-35",
    hairColor: "Castaño",
    eyeColor: "Verdes",
    specialty: Specialty.actor,
    experience: "10 años",
  );

  // Crear representantes
  Representative representante1 = Representative(
    name: "Juan Pérez",
    address: "Calle Falsa 123",
    phone: "555-1234",
  );

  Representative representante2 = Representative(
    name: "María López",
    address: "Avenida Siempre Viva 742",
    phone: "555-5678",
  );

  // Crear candidatos
  Candidate candidato1 = Candidate(
    code: "C001",
    name: "Ana García",
    address: "Calle Mayor 1",
    phone: "555-9876",
    birthDate: DateTime.now(),
    photo: "foto1.jpg",
    province: "Madrid",
    gender: Gender.female,
    heightRange: "1.70m",
    ageRange: "25-30",
    hairColor: "Rubio",
    eyeColor: "Azules",
    specialty: Specialty.model,
    experience: "5 años",
    representative: representante1,
    profile: perfil1,
  );

  Candidate candidato2 = Candidate(
    code: "C002",
    name: "Carlos Fernández",
    address: "Calle Menor 2",
    phone: "555-8765",
    birthDate: DateTime.now(),
    photo: "foto2.jpg",
    province: "Barcelona",
    gender: Gender.male,
    heightRange: "1.80m",
    ageRange: "30-35",
    hairColor: "Castaño",
    eyeColor: "Verdes",
    specialty: Specialty.actor,
    experience: "10 años",
    representative: representante2,
    profile: perfil2,
  );

  // Crear pruebas individuales y asignar candidatos
  IndividualTest prueba1 = IndividualTest(
    number: 1,
    date: DateTime.now(),
    room: "Sala 101",
    description: "Descripción de la prueba 1",
    candidates: [candidato1],
  );

  IndividualTest prueba2 = IndividualTest(
    number: 2,
    date: DateTime.now(),
    room: "Sala 102",
    description: "Descripción de la prueba 2",
    candidates: [candidato2],
  );

  IndividualTest prueba3 = IndividualTest(
    number: 3,
    date: DateTime.now(),
    room: "Sala 103",
    description: "Descripción de la prueba 3",
    candidates: [candidato1, candidato2],
  );

  // Crear fases de casting
  PhaseCasting fase1 = PhaseCasting(
    phaseNumber: 1,
    startDate: DateTime.now(),
    phaseId: "Fase001",
    tests: [prueba1, prueba2],
  );

  PhaseCasting fase2 = PhaseCasting(
    phaseNumber: 2,
    startDate: DateTime.now(),
    phaseId: "Fase002",
    tests: [prueba3],
  );

  // Crear agentes de casting
  CastingAgent agente1 = CastingAgent(
    employeeNumber: "A001",
    dni: "12345678X",
    name: "Pedro Gómez",
    address: "Calle Luna 5",
  );

  CastingAgent agente2 = CastingAgent(
    employeeNumber: "A002",
    dni: "87654321Y",
    name: "Laura Martínez",
    address: "Calle Sol 10",
  );

  // Crear castings
  Casting casting1 = Casting(
    code: "CAST001",
    name: "Colección Invierno",
    description: "Casting para línea de ropa de invierno",
    hiringDate: DateTime.now(),
    cost: 10000.0,
    type: CastingType.inPerson,
    phases: [fase1, fase2],
    agent: agente1,
  );

  Casting casting2 = Casting(
    code: "CAST002",
    name: "Anuncio TV",
    description: "Casting para anuncio de televisión",
    hiringDate: DateTime.now(),
    cost: 5000.0,
    type: CastingType.online,
    agent: agente2,
  );

  // Crear clientes
  Client cliente1 = Client(
    code: "CL001",
    name: "ModaCorp",
    address: "Calle Estilo 8",
    phone: "555-1122",
    contactPerson: "Luis Herrera",
    activityType: ActivityType.fashion,
    castings: [],
  );

  Client cliente2 = Client(
    code: "CL002",
    name: "CineProducciones",
    address: "Avenida Cine 15",
    phone: "555-3344",
    contactPerson: "Elena Rodríguez",
    activityType: ActivityType.cinema,
    castings: [],
  );

  // Asignar castings a clientes
  cliente1.castings.add(casting1);
  cliente2.castings.add(casting2);

  // Mostrar resultados simulados
  print("Cliente 1 (${cliente1.name}) tiene los siguientes castings:");
  for (var casting in cliente1.castings) {
    print("- ${casting.name}: ${casting.description}");
  }

  print("\nCliente 2 (${cliente2.name}) tiene los siguientes castings:");
  for (var casting in cliente2.castings) {
    print("- ${casting.name}: ${casting.description}");
  }

  // Mostrar los candidatos que participaron en las pruebas del primer casting
  print("\nCandidatos que participaron en el primer casting:");
  for (var fase in casting1.phases) {
    for (var prueba in fase.tests) {
      for (var candidato in prueba.candidates) {
        print("- ${candidato.name} en ${prueba.description}");
      }
    }
  }
}
