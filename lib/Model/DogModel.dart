



class DogModel{
  String? name;
  int? age;
  String? price;
  String? image;
  bool? adopted;
  DogModel({
    this.name,
    this.age,
    this.price,
    this.image,
    this.adopted
  });

  factory DogModel.fromJson(Map<String, dynamic> json){
    return DogModel(
      name: json["name"],
      price: json["price"],
      adopted: json["adopted"],
      age: json["age"],
      image: json["image"],


    );
  }
  Map<String, dynamic> toJson() => {
    "name":name,
    "price":price,
    "adopted":adopted,
    "age":age,
    "image":image,
  };
}