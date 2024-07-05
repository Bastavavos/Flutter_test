import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/poke.dart';

Future<List<Poke>> fetchDataAll() async {
  Uri url = Uri.parse('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = json.decode(response.body)['pokemon'];
    return jsonResponse.map((pokeJson) => Poke.fromJson(pokeJson)).toList();
  } else {
    throw Exception('Failed to load data from API');
  }
}

// Future fetchData() async {
//   Uri url = Uri.parse('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
//   Response response = await http.get(url);
//
//   if (response.statusCode == 200) {
//     Map<String, dynamic> jsonResponse = json.decode(response.body);
//     return Poke.fromJson(jsonResponse);
//   } else {
//     throw Exception('Failed to load data from API');
//   }
// }

// Future<List<Poke>> fetchDataAll() async {
//   await Future.delayed(Duration(seconds: 2));
//
//   var jsonResponse = [
//     {},
//   ];
//   return jsonResponse.map((item) => Poke.fromJson(item)).toList();
// }

// Future<Poke> fetchPokemonData(String url) async {
//   final response = await http.get(Uri.parse(url));
//
//   if (response.statusCode == 200) {
//     // If the server returns a 200 OK response, parse the JSON.
//     return Poke.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response, throw an exception.
//     throw Exception('Failed to load Pokemon data');
//   }
// }