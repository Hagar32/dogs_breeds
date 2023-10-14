import 'dart:convert';

import 'package:dogs_breeds/data/models/dogs_breeds_model.dart';
import 'package:http/http.dart';
abstract  class DogDataSource{
/// calls the https://dog.ceo/api/breeds/image/random endpoint
  ///
  /// throws a [ServerException] for all error codes
 Future<DogBreedModel> fetchRandomDog();
}
class DogDataSourceImpl implements DogDataSource{
  @override
  Future<DogBreedModel> fetchRandomDog() async{

   Response response = await get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

    if (response.statusCode > 199 && response.statusCode < 300) {
     print(response.statusCode);
     print(response.body);
     return DogBreedModel.fromMap(jsonDecode(response.body));
    } else {
     print(response.statusCode);

     print(response.body);

     throw UnimplementedError('Api has failed');
    }
   }

  }


