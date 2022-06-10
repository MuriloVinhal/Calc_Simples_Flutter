import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora-Simples:"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(10),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(
              "Resultado: $soma",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 73, 5, 110)),
            ),
            //input do primeiro valor
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
            ),

            //input do valor 2
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: t2,
            ),
            //espaçamento depois dos inputs

            new Padding(padding: const EdgeInsets.only(top: 20)),
            //nova linha

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 136, 9, 158),
                    ),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 10)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 136, 9, 158),
                    ),
                  ),
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                ),
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 10)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: new TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 136, 9, 158),
                    ),
                  ),
                  color: Colors.blueAccent,
                  onPressed: mult,
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 10)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "Limpar",
                    style: new TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  color: Colors.grey,
                  onPressed: limpar,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

//Atributos
  num num1 = 0;
  num num2 = 0;
  num soma = 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

//metodos
  void somar() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      soma = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      soma = num1 - num2;
    });
  }

  void mult() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      soma = num1 * num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      soma = 0;
    });
  }
}
