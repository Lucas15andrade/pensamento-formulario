import 'package:flutter/material.dart';
import 'package:flutter_pensamento/app/modules/sentimento/sentimento_module.dart';

import 'pages/descrever/descrever_page.dart';
import 'pages/status/status_page.dart';
import 'sentimento_bloc.dart';

class SentimentoPage extends StatefulWidget {
  final String title;
  const SentimentoPage({Key key, this.title = "Sentimento"}) : super(key: key);

  @override
  _SentimentoPageState createState() => _SentimentoPageState();
}

class _SentimentoPageState extends State<SentimentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Novo"),
        ),
        body: PageView(
          children: <Widget>[StatusPage(), DescreverPage()],
          controller: SentimentoModule.to.bloc<SentimentoBloc>().pageController,
        ));
  }
}
