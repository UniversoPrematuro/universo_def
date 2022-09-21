// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';

class CustomCarouselFB3 extends StatelessWidget {
  CustomCarouselFB3({Key? key}) : super(key: key);
  var borderRadius = 40;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/cartilha/");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(150)),
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "SINAIS DE PRONTIDÃO",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/noticias/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "EXEMPLO DOS PAIS - ALIMENTO E AMBIENTE - DICAS",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/projeto/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "UTENSÍLIOS - SUGESTÃO",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "TIPOS DE INTRODUÇÃO ALIMENTAR",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "COMO PREPARAR – BLW OU PAPINHA – VAPOR E CONSISTÊNCIA",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "DIVISÃO DO PRATO E GRUPOS ALIMENTAR",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "CRONOGAMA DE INTRODUÇÃO DE ALIMENTOS",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "ENGASGO E REFLEXO DE GAG",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "ALIMENTOS PARA SER INICIADOS",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "CONGELAMENTO E DESCONGELAMENTO DO ALIMENTO",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "REAÇÕES ALÉRGICAS",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "ALIMENTOS PROIBIDOS ATÉ 1 ANO", textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  // Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: const [
                    SizedBox(height: 35),
                    Center(
                      child: Text(
                        "ALIMENTOS PROIBIDOS ATÉ 2 ANOS", textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}