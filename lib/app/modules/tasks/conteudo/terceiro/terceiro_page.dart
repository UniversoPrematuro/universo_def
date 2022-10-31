import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/tarefas/denver/avaliacao_page.dart';
import 'package:universo_def/app/modules/tasks/conteudo/terceiro/terceiro_store.dart';
import 'package:flutter/material.dart';

class TerceiroPage extends StatefulWidget {
  final String title;
  const TerceiroPage({Key? key, this.title = 'TerceiroPage'}) : super(key: key);
  @override
  TerceiroPageState createState() => TerceiroPageState();
}
class TerceiroPageState extends State<TerceiroPage> {
  final TerceiroStore store = Modular.get();

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
                    Modular.to.pushNamed("/conteudo/t19");
                  }, 
                  child: const Text(
                    "Tarefa 19",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t20");}, 
                  child: const Text(
                    "Tarefa 20",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t21");}, 
                  child: const Text(
                    "Tarefa 21",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t22");}, 
                  child: const Text(
                    "Tarefa 22",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                    
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t23");}, 
                  child: const Text(
                    "Tarefa 23",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t24");}, 
                  child: const Text(
                    "Tarefa 24",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t25");}, 
                  child: const Text(
                    "Tarefa 25",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/conteudo/t26');}, 
                  child: const Text(
                    "Tarefa 26",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t27");}, 
                  child: const Text(
                    "Tarefa 27",
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