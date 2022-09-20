import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa9Page extends StatefulWidget {
  final String title;
  const Tarefa9Page({Key? key, this.title = 'Tarefa9Page'}) : super(key: key);
  @override
  Tarefa9PageState createState() => Tarefa9PageState();
}

class Tarefa9PageState extends State<Tarefa9Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tarefa 9"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                  child: LayoutBuilder(
                      builder: (_, constraints) => SingleChildScrollView(
                            child: Column(children: [
                              const Text(
                                "SIGA A 9ª TAREFA EM CASA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 1.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("MOVIMENTO",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    GridView.count(
                                      shrinkWrap: true,
                                      crossAxisCount: 3,
                                      children: <Widget>[
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child: Image.asset(
                                              'images1/static1.png'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child: Image.asset(
                                              'images1/static2.png'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child: Image.asset(
                                              'images1/static3.png'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif1.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif2.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif3.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif4.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif5.gif'),
                                        ),
                                        Container(
                                          //height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 1.0)),
                                          child:
                                              Image.asset('images1/Gif6.gif'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 40.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          '- Explorar os movimentos, tudo '
                                                  'que já foi alcançado até esse momento. Estamos quase mudando de '
                                                  'etapa, “Parabéns!”.\n\nEstimular as diferentes posições corporais,'
                                                  ' os movimentos de braços e pernas, o pegar o brinquedo, emitir '
                                                  'os sons, sempre olho no olho para aprender mais coisas.'
                                               '- '
                                                  'Aproveite esse momento, estamos quase mudando de etapa “Parabéns!”.'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "LEMBRE-SE: Todo cuidado com ${store.controllerKidName.text} é muito importante.",
                                        style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 212, 32, 0),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic),
                                        // textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0,
                                                right: 20.0,
                                                bottom: 40.0,
                                                top: 20.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: ElevatedButton.icon(
                                                label: Text(
                                                  'Seguem as tarefas',
                                                  style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                icon: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                  ]),
                                ),
                              ),
                              
                            ]),
                          )))
            ],
          ),
        ));
  }
}
