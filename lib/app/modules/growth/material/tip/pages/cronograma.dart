import 'package:flutter/material.dart';


class Cronograma extends StatelessWidget {
  const Cronograma({Key? key}) : super(key: key);





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
              'PARTE 7 – CRONOGAMA DE INTRODUÇÃO DE ALIMENTOS',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40.0,),

          const Text(
            "Baseado na Sociedade Brasileira de Pediatria devemos seguir o seguinte cronograma para a introdução alimentar:  ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20.0,),
          Table(
            //defaultColumnWidth: FixedColumnWidth(150.0),
            border: const TableBorder(
              horizontalInside: BorderSide(
                color: Color.fromARGB(255, 101, 188, 89),
                style: BorderStyle.solid,
                width: 1.0,
              ),
              verticalInside: BorderSide(
                color: Color.fromARGB(255, 101, 188, 89),
                style: BorderStyle.solid,
                width: 1.0,
              ),
            ),
            children: [
              _criarLinhaTable("Faixa etaria*Tipo de alimento"),
              _criarLinhaTable("6º mês*Frutas (amassadas, raspadas ou BLW)"),
              _criarLinhaTable("6º mês*Primeira papa principal de misturas multiplas"),
              _criarLinhaTable("7º ao 8º mês*Segunda papa principal de misturas multiplas"),
            ],
          ),
          const SizedBox(height: 40.0,),
          const Text(
            "Para um melhor entendimento podemos separar por período! Aos 6 meses (considerar idade corrigida) a cada 5 a 7 dias iniciamos uma nova fase, começamos pela fruta uma vez ao dia, em seguida passamos para dois períodos com frutas e após 15 dias iniciamos a refeição salgada. A partir dos 7 meses iniciamos com a segunda refeição salgada, completando assim as 4 refeições diárias.",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20.0,),
          Table(
            //defaultColumnWidth: FixedColumnWidth(150.0),
            border: const TableBorder(
              horizontalInside: BorderSide(
                color: Color.fromARGB(255, 101, 188, 89),
                style: BorderStyle.solid,
                width: 1.0,
              ),
              verticalInside: BorderSide(
                color: Color.fromARGB(255, 101, 188, 89),
                style: BorderStyle.solid,
                width: 1.0,
              ),
            ),
            children: [
              _criarLinhaTable("1 Semana*1x Fruta"),
              _criarLinhaTable("2 Semanas*2x Frutas"),
              _criarLinhaTable("3 Semanas*2x Frutas e 1x refeição salgada"),
            ],
          ),

        ],
      )
    );
  }

  _criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split('*').map((name) {
        return Container(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 20.0),
          ),
        );
      }).toList(),
    );
  }

}