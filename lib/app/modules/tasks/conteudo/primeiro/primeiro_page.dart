import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo_def/app/modules/tasks/conteudo/primeiro/primeiro_store.dart';
import 'package:flutter/material.dart';
import 'package:universo_def/app/modules/tasks/denverII.dart';

class PrimeiroPage extends StatefulWidget {
  final String title;
  const PrimeiroPage({Key? key, this.title = 'PrimeiroPage'}) : super(key: key);
  @override
  PrimeiroPageState createState() => PrimeiroPageState();
}
class PrimeiroPageState extends State<PrimeiroPage> {
  final PrimeiroStore store = Modular.get();

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
                    Modular.to.pushNamed("/conteudo/t1");
                  }, 
                  child: const Text(
                    "Tarefa 1",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t2");}, 
                  child: const Text(
                    "Tarefa 2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t3");}, 
                  child: const Text(
                    "Tarefa 3",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t4");}, 
                  child: const Text(
                    "Tarefa 4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                    
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t5");}, 
                  child: const Text(
                    "Tarefa 5",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t6");}, 
                  child: const Text(
                    "Tarefa 6",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t7");}, 
                  child: const Text(
                    "Tarefa 7",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/conteudo/t8');}, 
                  child: const Text(
                    "Tarefa 8 ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed("/conteudo/t9");}, 
                  child: const Text(
                    "Tarefa 9",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    
                    )),
                ElevatedButton(
                  onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DenverII()),
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