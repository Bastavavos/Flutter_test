import 'dart:ui';

import 'package:flutter/material.dart';

class Poke {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> type;

  Poke({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.type
  });

  factory Poke.fromJson(Map<String, dynamic> json) {

    var typeList = json['type'] as List;
    List<String> type = typeList.map((data) => data.toString()).toList();

    return Poke(
      id: json['id'],
      name: json['name'],
      imageUrl: json['img'],
      type: type
    );
  }
}

Color getColorFromType(List<String> types) {
  Map<String, Color> typeColors = {
    'Fire': Colors.red,
    'Water': Colors.blue,
    'Grass': Colors.green,
    'Normal': Colors.grey,
    'Poison': Colors.purple,
    'Electric': Colors.yellow,

    // Add more mappings as needed
  };

  return typeColors[types.first] ?? Colors.white; // Default to white if no matching type is found
}

// class Poke {
//   final int id;
//   final String num;
//   final String name;
//   final String img;
//   // final List<String> type;
//   final String height;
//   final String weight;
//   final String candy;
//   final int candyCount;
//   final String egg;
//   final double spawnChance;
//   final int avgSpawns;
//   final String spawnTime;
//   // final List<double> multipliers;
//   // final List<String> weaknesses;
//   // final List<Evolution> nextEvolution;
//
//   Poke({
//     required this.id,
//     required this.num,
//     required this.name,
//     required this.img,
//     // required this.type,
//     required this.height,
//     required this.weight,
//     required this.candy,
//     required this.candyCount,
//     required this.egg,
//     required this.spawnChance,
//     required this.avgSpawns,
//     required this.spawnTime,
//     // required this.multipliers,
//     // required this.weaknesses,
//     // required this.nextEvolution,
//   });
//
//   factory Poke.fromJson(Map<String, dynamic> json) {
//     var typeList = json['type'] as List;
//     List<String> type = typeList.map((data) => data.toString()).toList();

//     // var multipliersList = json['multipliers'] as List;
//     // List<dynamic> multipliers = multipliersList.map((data) => data.toString()).toList();
//
//     // var weaknessesList = json['weaknesses'] as List;
//     // List<String> weaknesses = weaknessesList.map((data) => data.toString()).toList();
//     //
//     // var nextEvolutionList = json['next_evolution'] as List;
//     // List<Evolution> nextEvolution = nextEvolutionList.map((data) => Evolution.fromJson(data)).toList();
//
//     return Poke(
//       id: json['id'],
//       num: json['num'],
//       name: json['name'],
//       img: json['img'],
//       type: type,
//       height: json['height'],
//       weight: json['weight'],
//       candy: json['candy'],
//       candyCount: json['candy_count'],
//       egg: json['egg'],
//       spawnChance: json['spawn_chance'].toDouble(),
//       avgSpawns: json['avg_spawns'],
//       spawnTime: json['spawn_time'],
//       // multipliers: multipliers,
//       // weaknesses: weaknesses,
//       // nextEvolution: nextEvolution,
//     );
//   }
// }
//
// class Evolution {
//   final String num;
//   final String name;
//
//   Evolution({required this.num, required this.name});
//
//   factory Evolution.fromJson(Map<String, dynamic> json) {
//     return Evolution(
//       num: json['num'],
//       name: json['name'],
//     );
//   }
// }



// import 'dart:convert';

