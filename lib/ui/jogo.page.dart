import 'package:flutter/material.dart';
import 'dart:math';

class Jogopage extends StatefulWidget {
  const Jogopage({
    Key key,
  }) : super(key: key);

  @override
  _JogopageState createState() => _JogopageState();
}

class _JogopageState extends State<Jogopage> {
  void escolha1() {
    image = 'images/pedra.jpg';
    escolha = 'Pedra';
    var r = Random();
    var numero = r.nextInt(3);
    if (numero == 0) {
      imagebot = 'images/pedra.jpg';
      escolhabot = 'Pedra';
    } else if (numero == 1) {
      imagebot = 'images/papel.jpg';
      escolhabot = 'Papel';
    } else if (numero == 2) {
      imagebot = 'images/tesoura.png';
      escolhabot = 'Tesoura';
    }
    if (escolhabot == 'Pedra') {
      resultado = 'Empate';
    } else if (escolhabot == 'Papel') {
      resultado = 'Bot ganhou';
    } else if (escolhabot == 'Tesoura') {
      resultado = 'Você ganhou';
    }
    setState(() {
      this.escolha = escolha;
      this.image = image;
      this.imagebot = imagebot;
      this.escolhabot = escolhabot;
      this.resultado = resultado;
    });
  }

  void escolha2() {
    image = 'images/papel.jpg';
    escolha = 'Papel';
    var r = Random();
    var numero = r.nextInt(3);
    if (numero == 0) {
      imagebot = 'images/pedra.jpg';
      escolhabot = 'Pedra';
    } else if (numero == 1) {
      imagebot = 'images/papel.jpg';
      escolhabot = 'Papel';
    } else if (numero == 2) {
      imagebot = 'images/tesoura.png';
      escolhabot = 'Tesoura';
    }
    if (escolhabot == 'Pedra') {
      resultado = 'Você ganhou';
    } else if (escolhabot == 'Papel') {
      resultado = 'Empate';
    } else if (escolhabot == 'Tesoura') {
      resultado = 'Bot ganhou';
    }
    setState(() {
      this.escolha = escolha;
      this.image = image;
      this.imagebot = imagebot;
      this.escolhabot = escolhabot;
      this.resultado = resultado;
    });
  }

  void escolha3() {
    image = 'images/tesoura.png';
    escolha = 'Tesoura';
    var r = Random();
    var numero = r.nextInt(3);
    if (numero == 0) {
      imagebot = 'images/pedra.jpg';
      escolhabot = 'Pedra';
    } else if (numero == 1) {
      imagebot = 'images/papel.jpg';
      escolhabot = 'Papel';
    } else if (numero == 2) {
      imagebot = 'images/tesoura.png';
      escolhabot = 'Tesoura';
    }
    if (escolhabot == 'Pedra') {
      resultado = 'Bot ganhou';
    } else if (escolhabot == 'Papel') {
      resultado = 'Você ganhou';
    } else if (escolhabot == 'Tesoura') {
      resultado = 'Empate';
    }
    setState(() {
      this.escolha = escolha;
      this.image = image;
      this.imagebot = imagebot;
      this.escolhabot = escolhabot;
      this.resultado = resultado;
    });
  }

  String image = "";
  String escolha = '';
  String imagebot = "";
  String escolhabot = '';
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpo'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset('/images/pedra.jpg', height: 100, width: 100),
                Container(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.black,
                    child: Text(
                      "Pedra",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: escolha1,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset('/images/papel.jpg', height: 100, width: 100),
                Container(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.black,
                    child: Text(
                      "Papel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: escolha2,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Sua escolha é:', textAlign: TextAlign.center),
                SizedBox(
                  height: 50,
                ),
                Image.asset(image),
                Text(escolha),
                SizedBox(height: 30),
                Text('versus'),
                SizedBox(height: 30),
                Image.asset(imagebot),
                Text(escolhabot),
                SizedBox(height: 30),
                Text(resultado),
              ],
            ),
            Column(
              children: [
                Image.asset('/images/tesoura.png', height: 100, width: 100),
                Container(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.black,
                    child: Text(
                      "Tesoura",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: escolha3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
