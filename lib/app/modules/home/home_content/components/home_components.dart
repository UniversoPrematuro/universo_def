// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomCarouselFB2 extends StatelessWidget {
  CustomCarouselFB2({Key? key}) : super(key: key);
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
                  Modular.to.pushNamed("/cartilha/");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(150)),
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/buttons/BotaoUP.png",
                        width: 100, height: 100),
                    const SizedBox(height: 15),
                    const Text(
                      "Cartilha",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/noticias/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/buttons/botaokm.png",
                        width: 100, height: 100),
                    const SizedBox(height: 15),
                    const Text(
                      "Noticias",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/projeto/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/buttons/BotaoUP.png",
                        width: 100, height: 100),
                    const SizedBox(height: 15),
                    const Text(
                      "O Projeto",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed("/producoes/");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Image.asset("images/buttons/botao bate papo.png",
                        width: 100, height: 100),
                    const SizedBox(height: 15),
                    const Text(
                      "Produções",
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}

class GraphHolder extends StatelessWidget {
  const GraphHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(1),
                blurRadius: 8,
                offset: const Offset(0, 5))
          ]),
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .7,
    );
  }
}
