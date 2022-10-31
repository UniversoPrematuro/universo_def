import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/quarto_store.dart';
import 'package:flutter/material.dart';
import 'package:universo_def/app/modules/tasks/conteudo/quarto/tarefas/denver/avaliacao_page.dart';

class QuartoPage extends StatefulWidget {
  final String title;
  const QuartoPage({Key? key, this.title = 'QuartoPage'}) : super(key: key);
  @override
  QuartoPageState createState() => QuartoPageState();
}
class QuartoPageState extends State<QuartoPage> {
  final QuartoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Crescimento"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Modular.to.pushReplacementNamed("/home/");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: 
            LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,  
              colors: [Color.fromARGB(255, 254, 187, 132), Color.fromARGB(255, 255, 183, 143)])),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Modular.to.pushNamed("/conteudo/t28");
                  }, 
                  child: const Text(
                    "Tarefa 28",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){
                    Modular.to.pushNamed("/conteudo/t29");
                  }, 
                  child: const Text(
                    "Tarefa 29",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){
                    Modular.to.pushNamed("/conteudo/t30");
                  }, 
                  child: const Text(
                    "Tarefa 30",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t31");}, 
                  child: const Text(
                    "Tarefa 31",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t32");}, 
                  child: const Text(
                    "Tarefa 32",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t33");}, 
                  child: const Text(
                    "Tarefa 33",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                    
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t34");}, 
                  child: const Text(
                    "Tarefa 34",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t35");}, 
                  child: const Text(
                    "Tarefa 35",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t36");}, 
                  child: const Text(
                    "Tarefa 36",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                
                ElevatedButton(
                  onPressed: (){Navigator.push(
                      context, MaterialPageRoute(builder: ((context) => AvaliacaoPage()))
                    );}, 
                  child: const Text(
                    "Avaliacao de desenvolvimento",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

               

                 
                const SizedBox(height: 100)
              ],
              
              ),
          ),
        ),
      )
    );
  }
}