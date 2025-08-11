import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  
  String numero = '';

  void calcular(String tecla){
    switch(tecla){
      case '1' : 
      case '2' :
      case '3' :
      case '4' :
      case '5' :
      case '6' :
      case '7' :
      case '8' :
      case '9' :
      case '0' :
      setState(() {
        numero += tecla;
      });
      break;

      case 'AC' : 
      setState(() {
        numero = '';
      });

      default:
      numero += tecla;
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 30),
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: 
              Center( child: Text('Calculadora'))
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(numero),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('AC');
                  },
                  child: Text('AC'),
                ),
                Text(''),
                Text(''),
                Text('DEL'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('7');
                  },
                  child: Text('7'),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('8');
                  },
                  child: Text('8'),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('9');
                  },
                  child: Text('9'),
                ),
                Text('/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('4');
                  },
                  child: Text('4'),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('5');
                  },
                  child: Text('5'),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('6');
                  },
                  child: Text('6'),
                ),
                Text('X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('1');
                  },
                  child: Text('1'),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('2');
                  },
                  child: Text('2'),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('3');
                  },
                  child: Text('3'),
                ),
                Text('-'),
              ],
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('0');
                  },
                  child: Text('0'),
                ),
                Text(','),
                Text('='),
                Text('+'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
