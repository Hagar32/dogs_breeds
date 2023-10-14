class DogBreedModel {
  final String imageUrl;

  DogBreedModel(this.imageUrl);

  factory DogBreedModel.fromMap(Map m) {
    return DogBreedModel(m['message']);
  }
}