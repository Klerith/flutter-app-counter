import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  
  const HomeScreen({ Key? key }) : super(key: key);

  // variable, propiedad

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );
    int counter = 15;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de Clicks', style: fontSize30 ),
            Text( '$counter', style: fontSize30 ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: () {
          
          counter++;
          print('Hola Mundo:  $counter');
        },
      ),
    );
  }

}

