import 'package:flutter/material.dart';
import 'package:flutter_pensamento/app/modules/sentimento/pages/descrever/descrever_bloc.dart';

import '../../sentimento_bloc.dart';
import '../../sentimento_module.dart';

class DescreverPage extends StatefulWidget {
  final String title;
  const DescreverPage({Key key, this.title = "Descrever"}) : super(key: key);

  @override
  _DescreverPageState createState() => _DescreverPageState();
}

class _DescreverPageState extends State<DescreverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Escreva seu pensamento"),
            SizedBox(
              height: 30,
            ),
            TextField(
              maxLines: 5,
              onChanged: (value) {
                var model = SentimentoModule.to.bloc<SentimentoBloc>().model;
                model.subtitle = value;
              },
            ),
            SizedBox(
              height: 30,
            ),
            OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {
                SentimentoModule.to.bloc<DescreverBloc>().addModel();
                Navigator.pop(context);
                },
                child: Text(
                  "CADASTRAR",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
