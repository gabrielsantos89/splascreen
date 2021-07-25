import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
void main() => runApp(MyRoutes2());

class MyRoutes2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      },
      // Criando uma função para operar com rotas nomeadas.
      // Usamos esta função para identificar o nome da
      // rota que tem push, e criar a rota para a
      // tela correta.
      onGenerateRoute: (settings) {
        // Se você der push passamos argumentos pela rota
        if (settings.name == PassArgumentsScreen.routeName) {
          // envie os argumentos para a rota correta
          // digite: ScreenArguments.
          final args = settings.arguments as ScreenArguments;

          // Em seguida, extraia os dados necessários dos
          // argumentos e passar os dados para a
          // tela correta.
          // configuração da estilização da tela.
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        // O código suporta apenas
        // PassArgumentsScreen.routeName a partir de agora.
        // Outros valores precisam ser implementados se precisarmos

        assert(false, 'Precisa implemetar ${settings.name}');
        return null;
      },
      title: 'SplashScreen',
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: HomeScreen(),
      title: Text("Avernus",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12.5,
      ),
      ),
      image: Image.asset("images/faith-mills-zariel.png"),
      backgroundColor: Colors.red,
      loadingText: Text("Descendo..."),
      styleTextUnderTheLoader: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12.5,
      ),
      photoSize: 100.0,
      loaderColor: Colors.black,
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descent into Avernus'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ​​botão que navega para uma rota nomeada.
            // A rota nomeada extrai os argumentos
            // sozinha.
            ElevatedButton(
              onPressed: () {
                // O que acontece:
                // Quando o usuário toca no botão,
                // navega para uma rota nomeada e
                // fornece os argumentos como um opcional de
                // parâmetro.
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Zariel',
                      "Originalmente, Zariel era uma solar sob o comando do  Lorde do Amanhecer Lathander, seu nome, de acordo com Reya Mantlemorn, significa Companheira da Luz. Dos Sete Céus do Monte Celestia, Zariel foi encarregada de acompanhar o progresso da Guerra de Sangrenta em Avernus, mas com a contínua exposição ao conflito, desenvoleu uma obsessão pela Guerra e um gosto pela batalha. Zariel era impetuosa por natureza e não podia ignorar o desejo de lutar dentro dela, mas seus pedidos eram consistentemente negados por seus pares angelicais."
                      "Zariel acreditava que era responsabilidade das forças angelicais derrotar o mal, e tinha como opinião de que um ataque das forças de Celestia poderiam acabar com ambos os lados da Guerra de Sangrenta de uma só vez, libertando o multiverso dos demônios que destruíram uns aos outros e vastos pedaços dele no processo. Apesar de sua repreensão por sua postura como espectadora, Zariel foi repetidamente proibida de entrar no conflito. Zariel ficou frustrada com a recusa de seus superiores em se envolver na guerra, e traçou o limite quando Yeenoghu massacrou um vilarejo sob sua proteção."
                      "Zariel desceu para acabar com a matança do Lorde Gnoll."
                      "No final do Ano do Arco, 1354 CV, Zariel desafiou seus superiores e liderou os Cavaleiros do Inferno, um exército de aliados mortais treinados pessoalmente por Zariel, até Avernus, na batalha que ficou conhecida como Cavalgada. Superada em número pelos demônios, o exército foi derrotado e os sobreviventes fugiram em terror e vergonha. Asmodeus enviou uma delegação de Osyluths para recuperar seu corpo inconsciente debaixo de uma montanha de corpos, o Senhor dos Nove permitiu que ela se recuperasse e a parabenizou. Zariel sucumbiu à natureza corruptora do Inferno e Asmodeus fez dela uma Arquidiaba e a nomeou sua campeã."
                  ),
                );
              },
              child: Text('Zariel'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
            // O ​​botão que navega para uma rota nomeada.
            // Para esta rota, extraia os argumentos na
            // função onGenerateRoute e envia
            // para a tela definida.
            Padding(padding: EdgeInsets.all(8)),
            ElevatedButton(
              onPressed: () {
                // Quando o usuário toca no botão,
                // navega para uma rota nomeada e
                // fornece os argumentos como um opcional de
                // parâmetro.
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Guerra Sangrenta',
                    "A Longo da historia, as abundantes hordas do Abismo e as estritamente regulamentadas "
                  "legiões dos Nove Infernos lutam pela supremacia do cosmos. "
                      "No mundo mortal, os poucos estudiosos, arcanistas e aventureiros que conhecem o conflito pelo que ele "
                  "realmente é se referem a ele como a Guerra Sangurenta. "
                  "A luta ocorre nos Planos Inferiores, no Plano Material e em qualquer outro lugar em que demônios e "
                  "diabos possam se aglomerar. De vez em quando, demônios saem do Abismo para invadir Avernus, a camada superior dos Nove Infernos. "
                      "Enquanto os diabos defendem seu território, eles também fazem ataques contra locais no Abismo. Embora a intensidade do conflito pode aumentar "
                      "e diminuir, e as linhas de frente da guerra podem mudar drasticamente, nunca passa um momento em que demônios e diabos "
                  "não estejam lutando entre si em algum lugar do multiverso.",
                  ),
                );
              },
              child: Text('Guerra Sangrenta'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.red,
    );
  }
}

// Este ​​widget que extrai os argumentos necessários de
// o ModalRoute.
class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extrai os argumentos do ModalRoute atual
    // configura e e envia como ScreenArguments.
    final args = ModalRoute
        .of(context)!
        .settings
        .arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget> [
          Container(
            alignment: Alignment.center,
            child: Text(
              args.message,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.5,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.5, 2.5),
                      blurRadius: 1.0,
                      color: Colors.black38,
                    ),
                    Shadow(
                      offset: Offset(3.5, 3.5),
                      blurRadius: 2.0,
                      color: Colors.black45,
                    ),

                  ]
              ),
            ),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Zariel.png"),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Voltar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

// W​widget aceita os argumentos necessários por meio do
// construtor
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  // Este widget aceita os argumentos como construtor de
  // parâmetros, porém não extrai os argumentos do
  // ModalRoute.
  // ----------------------------------
  // Os argumentos são extraídos pela função onGenerateRoute
  // declarada no widget MaterialApp.
  const PassArgumentsScreen({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget> [
          Container(
            alignment: Alignment.center,
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.5,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.5, 2.5),
                      blurRadius: 1.0,
                      color: Colors.black38,
                    ),
                    Shadow(
                      offset: Offset(3.5, 3.5),
                      blurRadius: 2.0,
                      color: Colors.black45,
                    ),

                  ]
              ),
            ),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Blood_War.jpg"),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Voltar"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Podemos passar qualquer objeto para o parâmetro de argumentos.
// Neste exemplo, criamos uma classe que com título e uma
// mensagem
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
