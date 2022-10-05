import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';
import 'package:flutter/material.dart';

import '../initial/auth/auth_store.dart';
import '../profile/edit/edit_store.dart';

class TasksPage extends StatefulWidget {
  final String title;
  const TasksPage({Key? key, this.title = 'TasksPage'}) : super(key: key);
  @override
  TasksPageState createState() => TasksPageState();
}
// ## VERDE CLARO
//   ## R: 101, G: 187, B: 88
class TasksPageState extends State<TasksPage> {
  final TasksStore store = Modular.get();
  final EditStore eStore = Modular.get();
  final AuthStore aStore = Modular.get();
// ## LARANJA MEIO ESCURO
//   ## R: 239, G: 121, B: 91
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desenvolvimento"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 101, 187, 88),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 101, 187, 88),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                           padding: const EdgeInsets.only(top: 50),
                           child:  Text(
                        "Exercicios para ${eStore.controllerKidName.text}",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),                    
                ),
                Image.asset("images/rest/Personagemai.png", width: 150, height: 150),
                 Center(
                  child: SizedBox(
                    width: 350,
                    height: MediaQuery.of(context).size.height * .72,
                    child: Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                      elevation: 20,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                            '' '${aStore.controllerNameMom.text}! \n'
                                'Para um desenvolvimento integral da criança é'' necessário estimular às diferentes áreas da linguagem motora global e fina e também a área social, para o alcance do melhor potencial de desenvolvimento garantindo que sua fase adulta seja mais produtiva.\n\nO melhor período para gerar os estímulos de aprendizado é entre o nascimento e três anos de idade. Após este período continua ocorrendo o aprendizado mas com um potencial gradativamente menor.\n\nO ambiente saudável, estímulos direcionados e as novas oportunidades de novas vivências garante a criança o cuidado para que o seu desenvolvimento seja mais favoravel e protegido!',
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 35, 85, 24)
                              ),
                            )
                          ),
                      )
                    )
                  ),
                

                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Preparamos um material de fácil entendimento para que "
                      "você possa sanar suas dúvidas a respeito de amamentação e/ou "
                      "oferecimento da fórmula!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                        ),
                      ),
                  ),
                ),

                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    fixedSize: MaterialStateProperty.all(const Size.fromWidth(320)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    
                  ),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/conteudo');
                  }, 
                  child: const Text(
                    "Navegar até o material!",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600
                    ),
                    
                    )),
               
                const SizedBox(height: 180)
  
              ]
            ),
          ),
        ),
      )
    );
  }
}