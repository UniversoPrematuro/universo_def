import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/tasks_store.dart';
import 'package:flutter/material.dart';

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
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Padding(
                           padding: EdgeInsets.only(top: 50),
                           child:  Text(
                        "Dicas inicias para as mamães!",
                        style: TextStyle(
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
                    height: MediaQuery.of(context).size.height * .6,
                    child: Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                      elevation: 20,
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                            // '' '${/*reg.controllerName.text*/}! \n'
                                'O crescimento saudável é alcançado com uma alimentação adequada  '
                                'principalmente nos dois primeiros anos de vida. O aleitamento '
                                'materno surge como uma estratégia eficiente de nutrição, proteção,'
                                ' vínculo e afeto. O leite materno contém todos os nutrientes '
                                'essenciais para o crescimento e o desenvolvimento da criança. '
                                'Mesmo quando a amamentação não é possível, algumas estratégias '
                                'podem servir de aliadas neste processo de transição para a fórmula'
                                ' infantil.''O crescimento saudável é alcançado com uma alimentação adequada  '
                                'principalmente nos dois primeiros anos de vida. Preparamos um material para auxiliá-la nesse processo.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
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