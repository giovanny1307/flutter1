import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// este es mi core widget y funciona como la raiz del proyecto
// hay dos tipos de widget stateless y statefull, estos reciben cambio dinamico en el estado

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    var questionIndex = 0;

    void answerQuestion() {
      // este wrapper le notifica a la app que el estado ha cambiado.
      setState(() {
        questionIndex = questionIndex + 1;
        questionIndex > 1 ? questionIndex = 0 : print('Indice en el rango');
      });
      
    }
  @override
  Widget build(BuildContext context) {
    
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
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              // asi se declara una func anonima
              onPressed: () => print("$questionIndex"),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              //** esto es un pointer a answer question */
              //** lo cual es muy diferente a llamar answerQuestion ya que */
              //** eso me corre la funcion y quiero retornar la funcion */
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              // otra forma de func anonima
              onPressed: () {
                print('Presiono la 3');
              },
            )
          ],
        )),
      ),
    );
  }
}

// ESTO ES STATELESS
/**class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    var questionIndex = 0;

    void answerQuestion()  {
        questionIndex = questionIndex + 1;   
        
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
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              // asi se declara una func anonima
              onPressed: () => print('Presiono el 1'),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              //** esto es un pointer a answer question */
              //** lo cual es muy diferente a llamar answerQuestion ya que */
              //** eso me corre la funcion y quiero retornar la funcion */
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
}*/
