import 'package:dogs_breeds/data/models/dogs_breeds_model.dart';
import 'package:dogs_breeds/data/remote_ds.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DogBreedModel ? _dog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Dogs breeds', style:TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      if(_dog!= null)
        Image.network(_dog!.imageUrl, width: 300,height: 300,),
      SizedBox(height: 20,),
      ElevatedButton(onPressed:() async {
      _dog = await DogDataSourceImpl().fetchRandomDog();
      setState(() {

      });
      },
      child:Text(
      ' fetch Another Dog'),
       clipBehavior: Clip.hardEdge,
             ),

    ],
  ),
),
    );
  }
}
