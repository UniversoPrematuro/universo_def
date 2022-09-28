import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/tarefas/tarefa4_page.dart';

import '../../../../profile/edit/edit_store.dart';
import '../../../components/components.dart';

class Tarefa24Page extends StatefulWidget {
  final String title;
  const Tarefa24Page({Key? key, this.title = 'Tarefa24Page'}) : super(key: key);
  @override
  Tarefa24PageState createState() => Tarefa24PageState();
}

class Tarefa24PageState extends State<Tarefa24Page> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tarefa 24"),
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
                                "SIGA A 24ª TAREFA EM CASA",
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
                                      MediaQuery.of(context).size.height * 1.1,
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
                                              'images1/fig79-8.jpeg'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 101, 188, 89),
                                                  width: 3.0)),
                                          child: Image.asset(
                                            'images1/fig79-6.jpeg',
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
                                          20.0, 10.0, 20.0, 45.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon9.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Movimento',
                                          'É importante para ${store.controllerKidName.text} todos os '
                                              'estímulos que reforça os movimentos aprendidos. No inicio é '
                                              'difícil, mas a cada semana cumprindo as tarefas esses movimentos'
                                              ' irão se tornar mais fáceis e de melhor domínio. Comece a reduzir'
                                              ' a sua ajuda para que ${store.controllerKidName.text} efetue os movimentos e deixe que ${store.controllerKidName.text}'
                                              ' adquira força muscular, equilíbrio pois é primordial para o '
                                              'andar de forma independente.'),
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
                                      MediaQuery.of(context).size.height * 1.15,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("SOM",
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
                                          20.0, 10.0, 20.0, 30.0),
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'images1/ballon91.png')),
                                      ),
                                      child: regText(
                                          '\u25CF Som',
                                          'Sempre que for ensinar uma palavra para'
                                              ' ${store.controllerKidName.text}, faça de maneira devagar os movimentos da boca, dê o '
                                              'sentido da palavra mostrando o objeto. Assim, ${store.controllerKidName.text} irá copiar '
                                              'seus gestos e associar a palavra com a situação do ambiente.'),
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
                                                20.0, 10.0, 20.0, 35.0),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      'images1/ballon9.png')),
                                            ),
                                            child: regText(
                                                '\u25CF Cuidado!',
                                                'A criança nessa idade quer explorar'
                                                    ' e é muito curiosa. Tenha cuidado com objetos próximos a ele(a), '
                                                    'degraus e escadarias. Também evite deixar ${store.controllerKidName.text} explorar estantes '
                                                    'ou mesas que possam balançar e que um objeto possa cair na '
                                                    'criança. Evita acidentes, proteja sua criança!'),
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
                                                      builder: ((context) => const TaskTwentFo())
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
class TaskTwentFo extends StatefulWidget {
  const TaskTwentFo({super.key});

  @override
  State<TaskTwentFo> createState() => _TaskTwentFoState();
}

class _TaskTwentFoState extends State<TaskTwentFo> {
  final EditStore store = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefa 24"),
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
                height: MediaQuery.of(context).size.height * 4.8,
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
                              Container(
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

                      SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Frases curtas, o tom de voz, gestos e as expressões '
                  'faciais suaves e bem articuladas ajudam ${store.controllerKidName.text} perceber sensações'
                  ' e sentidos da fala do adulto. Faça esses exercícios periodicamente.'
                  ' Vamos construindo pequenas frases de atividade do dia a dia '
                  'e repetindo para ${store.controllerKidName.text}, “Quem vai tomar banho agora?”, “Cadê a'
                  ' vovó, o titio.....”,  “Agora é hora de dormir”.........'
          ),textCTRST(stg1: '\u2055 O sorriso é uma interação que demonstra a felicidade. Sempre que ${store.controllerKidName.text} sorrir, retorne interagindo com um largo sorriso para que entenda que interagiu com você por meio do sorriso. Um sorriso mostra segurança, bem-estar, conforto. Vamos praticar!'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Procure fazer as atividades e tarefas com ${store.controllerKidName.text} nos mesmos'
                  ' horários do dia, a rotina diária estabelecida é mais saudável '
                  'para ${store.controllerKidName.text} (ficará mais calmo, concentrado e com maior interação '
                  'no ambiente). Organize o tempo, você também precisa para seus cuidados!'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV24TASK1'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer o sinal de tchau. Primeiro, você irá fazer o movimento e depois peça para ${store.controllerKidName.text} fazer também. Caso ${store.controllerKidName.text} tenha dificuldades em levantar os braços ou a mão, mostre como fazer, pegando no bracinho dele (a). A repetição do estimulo é importante para o aprendizado e memorização.'
          ),textCTRST(stg1: '\u2055 Para qualquer aprendizado de ${store.controllerKidName.text}, a melhor forma é explicar, mostrar com paciência e carinho. Todas as situações que são elogiadas e não repreensivas (gritos, gestos agressivos, movimentos rudes) é aprendida mais fácil e com melhor desenvolvimento.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Você deverá sentar no chão com ${store.controllerKidName.text} na sua frente e uma das suas mãos você mostrará o brinquedo e logo após esconde essa mão atrás do seu corpo, vamos ver a reação de ${store.controllerKidName.text}. A observação poderá ser predominante, então você mostra o brinquedo novamente e esconde, vamos estimulando ${store.controllerKidName.text} para o deslocamento em busca do objeto.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Comemore cada conquista dos novos movimentos corporais com parabéns, cantando músicas infantis e com brincadeiras sentirá a importância das suas conquistas e seu apoio em casa fase.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV24TASK2'),

          SizedBox(height: 60.0,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'Com ${store.controllerKidName.text} na posição ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,

              ),
              children: <TextSpan>[
                TextSpan(text: 'barriguinha pra cima, ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'ofereça seus dedos para ele (a) segurar e incentive para que ${store.controllerKidName.text} passe para a '),
                TextSpan(text: 'posição sentado (a).', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),textCTRST(stg1: '\u2055 Um ambiente agitado favorece para a irritabilidade da criança. Um ambiente calmo provoca serenidade e colabora para o desenvolvimento e o crescimento. Mantenha a rotina diária de alimentação, sono, banho e brincadeiras. Procure manter um ambiente seguro e tranquilo, contribuindo com toda a família.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 É importante estimular a independência. Por isso, nessa tarefa, tente oferecer o menor suporte possível para que ${store.controllerKidName.text} consiga sentar sozinho (a).'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Comemore sempre, cantando músicas infantis e com brincadeiras sentirá a importância das suas conquistas e seu apoio em casa fase.'
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV24TASK3'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Ensine ${store.controllerKidName.text} a fazer caretas. Faça você movimentos de abrir bem a boca, falando “aaaa”; mexer e enrugar o nariz, fazendo “bichinhos” “caminhãozinho”. Estimule ${store.controllerKidName.text}, fazendo com que ocorra a imitação.'
          ),textCTRST(stg1: '\u2055 O espaço organizado ajuda para o aprendizado de ${store.controllerKidName.text}. Mantenha o ambiente limpo, bem ventilado e com objetos seguros para a brincadeira e aprendizado. Cuidado com brinquedos e peças pequenas, evite acidentes domésticos.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Durante o exercício ofereça um brinquedo para ${store.controllerKidName.text} segurar e o estimule a soltar, (quando soltar) diga “ahhhh” caiu! Recomece oferecendo e deixe ${store.controllerKidName.text} pegar, mas antes pergunte “você quer”?  E vá repetindo como uma brincadeira, dialogando sempre, face a face.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 ${store.controllerKidName.text} deitado de ',
              stg2: "barriguinha para baixo,",
              stg3: " coloque um brinquedo ou objeto de preferencia um pouco distante e na lateral do corpo de ${store.controllerKidName.text}, mexa no brinquedo e deixe-o no mesmo lugar para chamar a atenção de ${store.controllerKidName.text}. Vamos somente observar, fique um pouco distante de ${store.controllerKidName.text} para que não perceba a sua presença. Deixa ${store.controllerKidName.text} em seu tempo organizar o seu deslocamento corporal com movimentos em busca do brinquedo. Os movimentos deverão ser livres sem interferência do adulto. Se não conseguir alcançar o brinquedo neste momento, vai repetindo a brincadeira, uma hora que menos esperar vai acontecer!"
          ),
          SizedBox(height: 10.0,),
          // Radin(UID,'DEV24TASK4'),

          SizedBox(height: 60.0,),
          textCTRST(
              stg1: '\u2055 Se o ambiente tiver um degrau de escada e com a sua supervisão direta, coloque ${store.controllerKidName.text} no inicio do degrau e na parte de cima deixe um brinquedo, estimule ${store.controllerKidName.text} a ficar de joelho e mãos na parte superior do degrau, a partir desta postura, estimule dobrar um joelho e subir para alcançar o brinquedo.'
          ),textCTRST(stg1: '\u2055 Se ${store.controllerKidName.text} estiver brincando com objetos indevidos para o momento, você, de forma gentil, deverá dizer “Não”, e o objeto anterior deverá ser trocado com um objeto seguro para a continuidade da brincadeira e ${store.controllerKidName.text} será direcionado para a outra atividade com segurança.'),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Depois do movimento acima ser executado por ${store.controllerKidName.text}, estimule com sua ajuda a descer o degrau de bumbum.'
          ),
          SizedBox(height: 15.0,),
          textCTRST(
              stg1: '\u2055 Momento de incorporar na rotina algumas sílabas na conversa como, por exemplo: “dá aqui para mamãe”. Assim, vá estimulando a prática do “dá-dá-dá”, “mã-mã-mã” e/ou “pá-pá-pá” e mesmo o “me dá”, “cadê”, tó...'
          ),
          SizedBox(height: 15.0,),
          // Radin(UID,'DEV24TASK5'),

          const Padding(
            padding: EdgeInsets.only(left: 20.0,right:20.0,bottom:10.0,top:30.0),
            child: Text(
              "Parabéns! Estamos indo muito bem com a estimulação.",
              style: TextStyle(
                  color: Color.fromARGB(255, 193, 61, 39),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic
              ),
              textAlign: TextAlign.center,
            ),
          ),

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
