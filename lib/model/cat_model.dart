class CatModel {
  int id;
  String name;
  String origin;
  String image;

  CatModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.origin});

  /*
      {
    "id": 1,
    "name": "Persian",
    "origin": "Iran",
    "temperament": "Sweet, Gentle, Quiet",
    "colors": [
        "White",
        "Black",
        "Blue",
        "Cream"
    ],
    "description": "The Persian cat is a long-haired breed known for its luxurious coat and sweet personality. They are calm and affectionate cats that enjoy a relaxed indoor lifestyle.",
    "image": "https://fakeimg.pl/500x500/cc5500"
}
      */

static  fromMap(Map<String, dynamic> data) {
    return CatModel(
        id: data['id'],
        image: data['image'],
        name: data['name'],
        origin: data['origin']);
  }
}
