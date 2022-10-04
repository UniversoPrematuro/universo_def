import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../models/task_model.dart';
import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';
import '../../../components/radin.dart';
import '../../../tasks_store.dart';

class Tarefa22Page extends StatefulWidget {
  final String title;
  const Tarefa22Page({Key? key, this.title = 'Tarefa22Page'}) : super(key: key);
  @override
  Tarefa22PageState createState() => Tarefa22PageState();
}

class Tarefa22PageState extends State<Tarefa22Page> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      tStore.getTasksFromFirebase(auth.currentUser!.uid, "DEV22").then((l){
        if(l.length == 0){
          for(int i = 1; i<6;i++){
            Task t = Task();
            t.user = auth.currentUser!.uid;
            t.task = 'TASK$i';
            t.group = 'DEV22';
            t.status = 'I';
            tStore.task = 'TASK$i';
            tStore.group = 'DEV22';
            tStore.status = 'I';
            t.date = DateTime.now().toString();

            // tStore.uploadTaskToFirebase(widget.uid!, widget.task!, );
          }
        }
      });
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 22"),
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
                                "SIGA A 22ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * 1,
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
                                    CarouselSlider(
                                      options: CarouselOptions(
                                          height: 285.0,
                                          reverse: false,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          enableInfiniteScroll: false),
                                      items: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                              'images1/fig79-5.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-7.jpeg',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 35.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          'Incentive para que sua criança '
                                              'pegue brinquedos de diferentes tamanhos, cores e pesos. Esse '
                                              'estímulo é muito importante para o desenvolvimento da destreza '
                                              'manual, fundamental para qualquer criança. Estimule a pegar '
                                              'brinquedos menores para executar o movimento com os dois dedos '
                                              'fazendo a pegada e sustentação do objeto.'),
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
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height:
                                      MediaQuery.of(context).size.height * 1.5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("LINGUAGEM",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 20.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Linguagem',
                                          'É importante você sempre passar '
                                              'confiança, afeto e incentivo na sua fala com ${store.controllerKidName.text}. Isso fará a '
                                              'diferença no desenvolvimento da criança.'),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 30.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          'É preciso cuidar do ambiente para '
                                              'proteger ${store.controllerKidName.text} de ocorrências alérgicas, o ambiente deve ser limpo'
                                              ' diariamente, e evitar cortinas, tapetes, almofadas. A casa '
                                              'deverá manter arejada com janelas abertas e cuidado com mofo e '
                                              'umidade nas paredes podem desencadear situação de adoecimento de'
                                              ' ${store.controllerKidName.text}.'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("CUIDADO!",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 214, 14, 0),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0,
                                          right: 40.0,
                                          bottom: 20.0),
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 25.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Cuidado!',
                                          '- Deixe ${store.controllerKidName.text} com objetos seguros, '
                                              'sem risco de acesso às pequenas peças.\n- Evite o risco de quedas.'
                                              ' Mantenha ${store.controllerKidName.text} em lugar plano e seguro. Cuidado com lugares altos.'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("ATENÇÃO!",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 214, 14, 0),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          regText(
                                              '',
                                              '- Cuidado com queda: não deixe ${store.controllerKidName.text}'
                                                  ' sozinho(a) no trocador ou na cama.\n- Respeite a hora do sono, um '
                                                  'ambiente tranquilo é importante para o seu desenvolvimento.'),
                                          const SizedBox(height: 30),
                                          const Text(
                                              "LEMBRE-SE: a frequência de estímulos é muito importante. Estimule "
                                              "sempre que possível",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 212, 32, 0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle: FontStyle.italic)),
                                          const SizedBox(height: 30),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0,
                                                right: 20.0,
                                                bottom: 40.0,
                                                top: 20.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: ElevatedButton.icon(
                                                label: const Text(
                                                  'Seguem as tarefas',
                                                  style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                icon: const Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: ((context) => const TaskTwentT())
                                                    )
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
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
class TaskTwentT extends StatefulWidget {
  const TaskTwentT({super.key});

  @override
  State<TaskTwentT> createState() => _TaskTwentTState();
}

class _TaskTwentTState extends State<TaskTwentT> {
  final EditStore store = Modular.get();
final TasksStore tStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 22"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Expanded(
            child: LayoutBuilder(
              builder: (_, constraints) => SingleChildScrollView(
                  child: Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * 6.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 8,
                          offset: const Offset(0, 5))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 70.0,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 100.0,
                                child: Image.asset("images1/Personagemai.png"),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              //margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 20.0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images1/ballon9.png')),
                              ),
                              child: const Text(
                                "Seja bem vinda!\nVamos seguir juntas as tarefas a cada dois"
                                " dias, nestes primeiros meses.\nVamos Começar?",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Coloque ${store.controllerKidName.text} para engatinhar em cima de diferentes '
                  'texturas, de maneira segura. Em cima de cobertores, toalhas,'
                  ' tapetes, ',
              stg2: "E.V.A",
              stg3: ", tudo vale para deixar ${store.controllerKidName.text} com melhor equilíbrio e"
                  " agilidade no movimento."
          ),textCTRST(stg1: '\u2055 Mantenha a carteirinha da criança em dia e não falte às consultas regulares de acompanhamento. Acompanhe a vacinação e verifique se está em dia! Siga somente orientações do cuidado da criança com profissionais da saúde e de sua confiança. Cuidado com quedas em lugares altos, cadeirinha, carrinho... Evite!'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante essas descobertas, narre e converse sobre '
                  'essas diferentes texturas, divirtam-se, afinal tudo é novo '
                  'para ${store.controllerKidName.text}. Faça isso, sempre que possível! Converse com ${store.controllerKidName.text}'
                  ' as coisas boas do dia, aproveita para você relaxar.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Toda semana procure trocar os brinquedos/objetos, como'
                  ' exemplo, se ${store.controllerKidName.text} brincar com seis objetos, você poderá trocar'
                  ' três ou dois, então fará um rodizio dos brinquedos tornando '
                  'aquele movimento gostoso e de distração.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK1'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Conte uma história para ${store.controllerKidName.text}! A história se passa em'
                  ' uma fazenda e os personagens principais são os bichinhos que'
                  ' vivem nela, como vaca, boi, cachorro, gatinho, porquinho.'
          ),textCTRST(stg1: '\u2055 ${store.controllerKidName.text} está crescendo e consegue fazer movimentos novos a cada dia. Deixe todos os produtos de limpeza, tesouras, pregos e todo material que pode ser um risco para ${store.controllerKidName.text} bem guardados. Observe as mudanças no desenvolvimento de ${store.controllerKidName.text}. O registro permitirá a observação dessas mudanças.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 A cada vez que falar de um animalzinho, ensine ${store.controllerKidName.text} '
                  'o barulho que o bichinho faz, direcionando-se face a face com'
                  ' ${store.controllerKidName.text}, para que observe o som sendo articulado em sua boca. '
                  'Faz os ruídos dos animais e se possível mostre a figura e/ou '
                  'mesmo um desenho produzido.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK2'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Cante uma canção para ${store.controllerKidName.text}! Busque uma música infantil'
                  ' que agrade ${store.controllerKidName.text} e cante para ele (a). Tente ensinar pequenas '
                  'silabas das palavras que aparecem na música.'
          ),textCTRST(stg1: '\u2055 Lembre! ${store.controllerKidName.text} está desenvolvendo e novos movimentos estão surgindo, então vamos assegurar que o berço fique longe da janela do quarto e mantenha as proteções laterais (grades) do berço.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Canções infantis são ótimas para a familiarização de'
                  ' frases e palavras, facilitando a aquisição de linguagem e '
                  'compreensão das crianças. Qualquer tentativa de vocalização '
                  'de ${store.controllerKidName.text} deve ser estimulada.'
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Um movimento para combinar, deixe um brinquedo ou objeto '
                  'que ${store.controllerKidName.text} goste em cima do sofá, mostre e estimule ${store.controllerKidName.text} para pega-lo'
                  ', pode ajudar segurando na mão de ${store.controllerKidName.text}. Depois, quando estiver de ',
              stg2: "pé com apoio",
              stg3: " (sofá, cadeira) pegue a mão de ${store.controllerKidName.text} e estimule a sentar no"
                  " chão (pode deixar o brinquedo cair no chão para ficar mais divertido"
                  " e interessante), vamos treinar o levantar e o agachamento."
          ),
          const SizedBox(height: 15.0,),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK3'),

          const SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Vamos construir uma torre. Com ${store.controllerKidName.text} na ',
              stg2: "posição sentado (a)",
              stg3: ", dê blocos para que ${store.controllerKidName.text} consiga construir uma torre. Incentive"
                  " a construção de uma torre alta, oferecendo auxilio para ${store.controllerKidName.text}"
                  " e quando precisar ficar em pé para colocar os blocos que ficam"
                  " no alto você poderá ajudar com o apoio das mãos. A brincadeira"
                  " também pode acontecer com ${store.controllerKidName.text} em pé de frente ao sofá ou cadeira."
          ),textCTRST(stg1: '\u2055 Para a memorização de ${store.controllerKidName.text}, você deverá repetir as atividades. Não se espante se ${store.controllerKidName.text} não aprender uma lição logo na primeira tentativa. Seja persistente. Em caso de dúvidas sobre o crescimento e desenvolvimento de ${store.controllerKidName.text}, entre em contato conosco na aba dúvidas do aplicativo.'),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Encoraje ${store.controllerKidName.text} a realizar os movimentos com os cubos '
                  'e vá conversando sobre as cores, formas e parabenize qualquer'
                  ' tentativa de ${store.controllerKidName.text}. Faça isso, sempre!',
              stg2: "\nOBS:",
              stg3: " Os blocos podem ser construídos com madeira, cubos de 2x2cm,"
                  " 3x3cm....... diferentes tamanhos e se quiser pintar ficará"
                  " colorido e mais interessante."
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK4'),

          const SizedBox(height: 60.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: '\u2055 Os movimentos deverão ser associados, processo de evolução '
                  'no desenvolvimento. Com ${store.controllerKidName.text} deitado de ',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: const <TextSpan>[
                TextSpan(text: 'barriguinha para cima', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' estimule para sentar, se estiver de '),
                TextSpan(text: 'barriguinha para baixo', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ', estimule virar de '),
                TextSpan(text: 'barriguinha para cima', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' ou mesmo de '),
                TextSpan(text: 'barriguinha para baixo', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' com apoio nas mãos levantar para a posição de '),
                TextSpan(text: 'pé', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '. Não é hora de andar, mas é hora de estimular a ficar na posição em '),
                TextSpan(text: 'pé', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),textCTRST(stg1: '\u2055 Nesta idade ${store.controllerKidName.text} observa melhor ao seu redor, as pessoas, o ambiente e todos os objetos da casa. As brincadeiras em locais seguros, tranquilos e com pessoas de confiança ajudam para o melhor desenvolvimento.'),
          textCTRST(
              stg1: '\u2055 Com ${store.controllerKidName.text} ',
              stg2: "sentado (a)",
              stg3: " no colo, de frente a você, ensine a cantar parabéns,"
                  " batendo as palminhas e levantando os braços."
          ),
          const SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Sempre que ${store.controllerKidName.text} emitir sons na tentativa de se expressar,'
                  ' interaja com ${store.controllerKidName.text} conversando de forma tranquila e calma para '
                  'que observe as suas expressões, gestos e palavras. Determine '
                  'esse tempo de exercício para também conversar com ${store.controllerKidName.text} e'
                  ' observar suas reações.'
          ),
          const SizedBox(height: 10.0,),
          Radin(task:'DEV22TASK5'),

          const SizedBox(height: 10.0,),
                    ],
                  ),
                ),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
