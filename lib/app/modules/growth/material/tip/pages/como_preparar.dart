// ignore_for_file: non_constant_identifier_names, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';


class ComoPreparar extends StatelessWidget {
  const ComoPreparar({super.key});


  // String UID;
  // String name;
  // GSub368(this.UID, this.name);


  @override
  Widget build(BuildContext context) {


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
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const SizedBox(height: 20.0,),
          const Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              'PARTE 5 – COMO PREPARAR – BLW OU PAPINHA – VAPOR E CONSISTÊNCIA',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20.0,),

          const Text(
            '     O preparo dos vegetais da refeição salgada deve ser de preferência no vapor, onde se perde menos nutrientes e é mais fácil de chegar na consistência adequada. Pode-se cozinhar todos os vegetais ao mesmo tempo, distribuídos em uma panela à vapor. Porém, vale lembrar que o tempo de cozimento dos vegetais são diferentes, devendo ficar atentos para não os deixar muito moles.\n'
                '\n     A consistência do alimento deve estar no ponto de conseguir apertar com os dedos desfazendo sem esforço. Mas, um outro teste que podemos fazer para descobrir o ponto ideal do alimento é nós mesmo testarmos, então é só colocar no céu da boca um pequeno pedaço do alimento e apertar apenas com a língua, esperando que este alimento se desfaça da mesma forma!\n',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: GCARD('BLW',context,1)),
              Expanded(child: GCARD('Tadicional',context,2)),
            ],
          ),

        ],
      ),
    );
  }

  Widget GCARD(String title, BuildContext context, int page) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Gsub_361sub(page,title))));
      },
      child: Card(
        elevation: 2.0,
        margin: const EdgeInsets.all(20.0),
        child: Container(
          color: const Color.fromARGB(20, 101, 188, 89),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

}


class Gsub_361sub extends StatelessWidget {

  int num;
  String title;
  Gsub_361sub(this.num,this.title, {super.key});

  @override
  Widget build(BuildContext context) {

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
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20.0,),

          content(num),

          const SizedBox(height: 20.0,),
          Image.asset(num == 1?'images1/figg1012-2.jpeg':'images1/figg1012-18.jpeg',),
        ],
      ),
    );
  }

  Widget content(int num){
    if(num == 1){
      return const Text(
        "     Para o BLW iremos seguir a orientação anterior, deixando os alimentos na consistência bem molinha ao ponto de se desfazer com a força da língua. Este será o processo em que bebe irá passar. Por mais que bebe ainda não possua os dentes, a sua gengiva e língua serão capazes de desfazer o alimento e deglutir.",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        textAlign: TextAlign.justify,
      );
    } else if(num == 2){
      return const Text(
        "     Para as papinhas, após cozinhar os alimentos no vapor iremos utilizar de um garfo e amassar estes alimentos de forma que vire um purê com alguns pequenos pedaços. Assim iremos levar estes alimentos até a boca do bebe. O pratinho deve ser montado com todos os alimentos separados, nada de fazer uma papinha única, viu?"
            "\n\n     Como queremos que bebe comece a comer os alimentos naturais, assim como nós adultos consumimos, no método tradicional diferente do BLW, devemos alterar um pouco a forma de oferecer, dos 8 aos 9 meses deixamos alguns pedaços com diferentes tamanhos quando formos amassar!",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        textAlign: TextAlign.justify,
      );
    } else {
      return Container();
    }
  }
}
