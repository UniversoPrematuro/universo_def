import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/growth/material/tip/pages/widgets/card.dart';
import 'package:universo_def/app/modules/home/home_content/components/home_components.dart';

class Tip17Page extends StatefulWidget {
  final String title;
  const Tip17Page({Key? key, this.title = 'Tip17Page'}) : super(key: key);
  @override
  Tip17PageState createState() => Tip17PageState();
}

class Tip17PageState extends State<Tip17Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            // Image.asset("images/logo/LogoTop.png"),
            SizedBox(
              width: 10.0,
            )
          ],
          centerTitle: true,
          title: Text(
            'Crescimento',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          elevation: 1.5,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Expanded(
            child: LayoutBuilder(builder: (_, constraints) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const Text(
                        'INTRODUÇÃO',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset("images/rest/Personagemai.png"),
                      const Text(
                        'A introdução alimentar, chamada também de alimentação complementar, é o momento em que se dá início a oferta dos alimentos além do leite, aos 6 meses de idade corrigida, para bebe em aleitamento materno exclusivo e/ou fórmulas. O início da introdução alimentar terá como função a apresentação do gosto dos alimentos para bebe, sua consistência, seu cheiro e a forma de comer, por isso não se preocupe caso bebe não coma inicialmente. O principal alimento até o 1 ano de vida ainda continua sendo o leite materno ou a fórmula já estabelecida.'
                        '\n\nPara dar início a introdução alimentar é preciso avaliar alguns pontos que indicará o momento certo. Vamos avaliar de forma visual, pois conseguiremos observar melhor as reações do bebe. Já as questões internas do organismo (enzimas, digestão, capacidade dos sistemas) devemos deixar para a avaliação do profissional de saúde.'
                        '\n\nBebe ainda não possui as aparições dos dentes, mas a força de sua gengiva e de sua língua são capazes de desfazer os alimentos. Assim, transformando os alimentos em pedaços menores ou em purês será suficiente para bebe conseguir deglutir de forma segura.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 50),
                      GridView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2
                          ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  Modular.to.pushReplacementNamed("/tip/prontidao");
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(150)),
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "SINAIS DE PRONTIDÃO",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/exemplo");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "EXEMPLO DOS PAIS - ALIMENTO E AMBIENTE - DICAS",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/utensilios");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "UTENSÍLIOS - SUGESTÃO",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/tipos");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "TIPOS DE INTRODUÇÃO ALIMENTAR",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/comopreparar");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "COMO PREPARAR – BLW OU PAPINHA – VAPOR E CONSISTÊNCIA",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/divisao");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "DIVISÃO DO PRATO E GRUPOS ALIMENTAR",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/cronograma");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "CRONOGAMA DE INTRODUÇÃO DE ALIMENTOS",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/engasgo");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "ENGASGO E REFLEXO DE GAG",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/alimentosini");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "ALIMENTOS PARA SER INICIADOS",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/congelamento");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "CONGELAMENTO E DESCONGELAMENTO DO ALIMENTO",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/reacoes");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "REAÇÕES ALÉRGICAS",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/proibido1");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "ALIMENTOS PROIBIDOS ATÉ 1 ANO",
                                        textAlign: TextAlign.center,
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
                                  Modular.to.pushNamed("/tip/proibido2");
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green)),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * .3,
                                  height:
                                      MediaQuery.of(context).size.height * .2,
                                  child: Column(children: [
                                    const SizedBox(height: 35),
                                    Center(
                                      child: const Text(
                                        "ALIMENTOS PROIBIDOS ATÉ 2 ANOS",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ]),
                                )),
                          ),
                        ],
                      )
                      // CustomCarouselFB3()
                    ],
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
