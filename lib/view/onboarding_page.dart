import 'package:flutter/material.dart';
import 'package:flutter_ui/view/home_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showNextButton: false,
      pages: [
        PageViewModel(
          title: "Estudos Flutter",
          body: "Entendendo packages e Widgets",
          image: buildImage("assets/flutter.png"),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Aqui temos o package Introduction Screen",
          body: "Clique em Pronto",
          image: buildImage("assets/dart.png"),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text("Pronto", style: TextStyle(fontWeight: FontWeight.bold),),
      onDone: () => goToHomePage(context),
    );
  }
  void goToHomePage(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder:  (_) => HomePage()),
  );

  //Widget para build de imagem, caminho, tamanho de imagem
  Widget buildImage(String path) =>
      Center(child: Image.asset(path,  width: 275));

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(color: Colors.black,fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );
}

