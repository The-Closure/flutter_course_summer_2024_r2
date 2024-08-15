import 'package:api_exception/model/animal_modlel.dart';
import 'package:dio/dio.dart';

Future<List<AnimalModlel>> getOneAnimal() async {
  Dio request = Dio();
  try {
    var response = await request
        .get("https://66bb7c806a4ab5edd63891b2.mockapi.io/api/v1/Animal");
    List<AnimalModlel> animals = [];
    for (var i = 0; i < response.data.length; i++) {
      AnimalModlel animal = AnimalModlel.fromMap(response.data[i]);
      animals.add(animal);
    }
    return animals;
  } catch (e) {
    print(e);
    rethrow;
  }
}

Future<bool> createNewAnimal(AnimalModlel animal) async {
  Dio request = Dio();
  try {
    var response = await request.post(
        "https://66bb7c806a4ab5edd63891b2.mockapi.io/api/v1/Animal",
        data: animal.toMap());
    return true;
  } catch (e) {
    return false;
  }
}
