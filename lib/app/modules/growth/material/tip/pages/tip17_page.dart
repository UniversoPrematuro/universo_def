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
                    
                    CustomCarouselFB3()
                    

                    ],
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
