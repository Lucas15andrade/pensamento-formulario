import 'package:flutter/material.dart';
import 'package:flutter_pensamento/app/app_module.dart';
import 'package:flutter_pensamento/app/modules/sentimento/sentimento_module.dart';
import 'package:flutter_pensamento/app/shared/blocs/shared_bloc.dart';
import 'package:flutter_pensamento/app/shared/models/sentimento_model.dart';
import 'package:flutter_pensamento/app/shared/widgets/smille.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final blocSentimento = AppModule.to.getBloc<SharedBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pensamentos"),
      ),
      body: StreamBuilder<List<SentimentoModel>>(
        stream: blocSentimento.listOut,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final List<SentimentoModel> models = snapshot.data;

          if (models.length == 0) {
            return Container(
                color: Colors.grey[300],
                child: Center(
                  child: Text("Não há nenhum sentimento cadastrado"),
                ));
          }

          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Container(
                  height: 100,
                  width: 100,
                  child: Smiley(
                    range: models[index].sentimento,
                  ),
                ),
                title: Text(models[index].title),
                subtitle: Text(models[index].subtitle),
              );
            },
            itemCount: models.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SentimentoModule()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
