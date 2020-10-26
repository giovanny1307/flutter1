import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// este es mi core widget y funciona como la raiz del proyecto
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    void answerQuestion()  {
        print('Holi holi');
      }

    return MaterialApp(
      

      // un scaffold funciona para dar una estructura base
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 1'),
        ),
        // en el body ud puede meter widgets que dan layou structure como colum
        // hay widgets visibles e invisibles, los invisibles dan layout structure
        body: (Column(
          children: <Widget>[
            Text('Question'),
            RaisedButton(
              child: Text('Answer 1'),
              // asi se declara una func anonima
              onPressed: () => print('Presiono el 1'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              //** esto es un pointer a answer question
              //** lo cual es muy diferente a llamar answerQuestion ya que 
              //** eso me corre la funcion y quiero retornar la funcion 
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              // otra forma de func anonima    
              onPressed:() {
                print('Presiono la 3');
              },
            )
          ],
        )),
      ),
    );
  }
}
