import 'dart:io';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart'; // Import the connectivity package
import 'package:flutter/services.dart';
import 'ad_widget.dart';
import 'card_screen.dart';
import 'splash_screen.dart';
import 'package:share/share.dart';
import 'package:connectivity/connectivity.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Trava a orientação da tela para retrato (vertical) apenas
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Passaros Brasil',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(), // Definindo SplashScreen como tela inicial
      routes: {
        '/home': (context) => HomePage(),
        '/cards': (context) => CardScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  void _shareApp() {
    Share.share('Texto para compartilhar o aplicativo',
        subject: 'Compartilhar o aplicativo');
  }

  Future<bool> _checkInternetConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  void _navigateToCardScreen(BuildContext context) async {
    bool hasInternet = await _checkInternetConnectivity();
    if (hasInternet) {
      Navigator.pushNamed(context, '/cards');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sem conexão com a internet'),
            content: Text(
                'Os passarinhos precisão de internet para cantar. Conecte e tente novamente.🐦'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passaro sons'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/app/icon.png', // URL da imagem da internet
                  width: 200,
                  height: 200,
                ),
                Text(
                  'Bem-vindo ao Passaro sons',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 30, 107, 32),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 26),
                ElevatedButton(
                  onPressed: () {
                    _navigateToCardScreen(
                        context); // Call the new function to navigate with internet connectivity check
                  },
                  child: SizedBox(
                    width: 200, // Largura desejada
                    height: 50, // Altura desejada
                    child: Center(
                      child: Text(
                        'ENTRAR',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      // Personalize o estilo do botão aqui, se necessário
                      ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: _shareApp,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: const adWidget(
                adScreem: adWidget.homeScreem,
              ))
        ],
      ),
    );
  }
}
