// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Tip16Page extends StatefulWidget {
  final String title;
  const Tip16Page({Key? key, this.title = 'Tip16Page'}) : super(key: key);
  @override
  Tip16PageState createState() => Tip16PageState();
}

class Tip16PageState extends State<Tip16Page> {
  @override
  Widget build(BuildContext context) {
    // usrLOG(UID, "GrouthSub11").then((_){});
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Image.asset("images1/LogoTop.png"),
          const SizedBox(
            width: 10.0,
          )
        ],
        centerTitle: true,
        title: const Text(
          'Crescimento',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 1.5,
      ),
      body: PageView(
        // controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            children: <Widget>[
              Image.asset(
                'images1/Gif-1.gif',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'O leite materno é o melhor alimento para ser oferecido à criança.'
                ' Algumas dificuldades podem surgir durante a amamentação, por isso'
                ' preparamos um material com técnicas que podem facilitar a '
                'transição para amamentação ou fórmula, com as indicações e '
                'vantagens de cada uma.  Evite mamadeiras, bicos e chupetas, isso'
                ' dificulta o aleitamento materno pela confusão de bicos que '
                'provoca na criança.  ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),

              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Modular.to.pushNamed("/tip/copinho");
                          },
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(20))),
                          child: const Text(
                            "Alimentação por copinho",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Modular.to.pushNamed("/tip/relactacao");
                          },
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(20))),
                          child: const Text(
                            "Relactação/ Translactação - sondinha (tubo pequeno para passagem do leite)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Modular.to.pushNamed("/tip/ordenha");
                          },
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(20))),
                          child: const Text(
                            "Ordenha manual",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )),
                    ),
                  ],
                ),
              ),
              // ElevatedButton(

              //   onPressed: (){
              //     // _pageController.jumpToPage(1);
              //   },
              //   child: const Text(
              //     'Acessar material',
              //     style: TextStyle(
              //         fontSize: 20.0,
              //         fontWeight: FontWeight.w500,
              //         color: Colors.black
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 200.0,
              ),
            ],
          ),
          // ListView(
          //   children: <Widget>[
          //     GCARD('Alimentação por copinho', 1),
          //     GCARD('2	Relactação/ Translactação - sondinha (tubo pequeno para'
          //         ' passagem do leite).', 2),
          //     GCARD('3	Ordenha manual', 3)
          //   ],
          // )
        ],
      ),
    );
  }

  Widget GCARD(String title, int page) {
    return InkWell(
      onTap: () {
        switch (page) {
          case 1:
            Modular.to.pushNamed("/copinho/");
            break;
          case 2:
            Modular.to.pushReplacementNamed("/relactacao/");
            break;
          case 3:
            Modular.to.pushReplacementNamed("/ordenha/");
            break;
        }
      },
      child: Card(
        elevation: 2.0,
        margin: const EdgeInsets.fromLTRB(40, 20.0, 40, 0.0),
        child: Container(
          color: const Color.fromARGB(20, 101, 188, 89),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(40.0),
          width: 300.0,
          child: Text(
            title,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
