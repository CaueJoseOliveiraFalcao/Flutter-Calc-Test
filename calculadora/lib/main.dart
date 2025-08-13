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
  double firstValue = 0.0;
  String typeOp = '';
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
      case '.' :
      setState(() {
        numero += tecla;
        if( numero.contains('.')) {
          //double finalNum = double.parse(numero);
          //numero = finalNum.toString();
        } else {
          int finalNum = int.parse(numero);
          numero = finalNum.toString();
        }
      });
      break;

      case 'AC' : 
        setState(() {
          numero = '';
        });
        break;
      case '+' :
        firstValue =  double.parse(numero);
        numero = '0';
        typeOp = tecla;
        break;
      case 'X' :
        firstValue =  double.parse(numero);
        numero = '0';
        typeOp = tecla;
        break;
      case '/' :
        firstValue =  double.parse(numero);
        numero = '0';
        typeOp = tecla;
        break;
      case 'DEL':
        setState(() {
          if (numero.isNotEmpty){
              String numStr = numero.toString();
              String semUltimo = numStr.substring(0, numStr.length - 1);
              numero = semUltimo;
          }
        });
      case '=' :
        double result = 0.0;
        dynamic resultformated = 0;
        
        if (typeOp == '+') {
          result = firstValue + double.parse(numero);

          List<String> parsedResult = result.toString().split('.');

          if (int.parse(parsedResult[1]) == 0) {
            // Sem casas decimais, mostrar como inteiro
            resultformated = int.parse(parsedResult[0]);
          } else {
            // Mostrar com casas decimais
            resultformated = result;
          }
        }
        if (typeOp == 'X') {
          result = firstValue * double.parse(numero);

          List<String> parsedResult = result.toString().split('.');

          if (int.parse(parsedResult[1]) == 0) {
            // Sem casas decimais, mostrar como inteiro
            resultformated = int.parse(parsedResult[0]);
          } else {
            // Mostrar com casas decimais
            resultformated = result;
          }
        }
        if (typeOp == '/') {
          if (double.parse(numero) * 1 == 0){
            print('nah');
            return;
          }
          result = firstValue / double.parse(numero);

          List<String> parsedResult = result.toString().split('.');

          if (int.parse(parsedResult[1]) == 0) {
            // Sem casas decimais, mostrar como inteiro
            resultformated = int.parse(parsedResult[0]);
          } else {
            // Mostrar com casas decimais
            resultformated = result;
          }
        }
        setState(() {
          numero = resultformated.toString();
        });
        break;

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
                GestureDetector(
                  onTap: () {
                    calcular('DEL');
                  },
                  child: Text('DEL'),
                ),
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
                GestureDetector(
                  onTap: () {
                    calcular('/');
                  },
                  child: Text('/'),
                ),
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
                GestureDetector(
                  onTap: () {
                    calcular('X');
                  },
                  child: Text('X'),
                ),
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
                GestureDetector(
                  onTap: () {
                    calcular('.');
                  },
                  child: Text('.'),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('=');
                  },
                  child: Text('='),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('+');
                  },
                  child: Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
