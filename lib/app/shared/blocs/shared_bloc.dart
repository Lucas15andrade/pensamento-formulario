import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_pensamento/app/shared/models/sentimento_model.dart';
import 'package:rxdart/subjects.dart';

class SharedBloc extends BlocBase {
  List<SentimentoModel> sentimentoList = [];

  BehaviorSubject<List<SentimentoModel>> _listController;

  Stream get listOut => _listController.stream;

  SharedBloc() {
    _listController = BehaviorSubject.seeded(sentimentoList);
  }

  addNovoSentimento(SentimentoModel sentimentoModel) {
    sentimentoList.add(sentimentoModel);
    _listController.add(sentimentoList);
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _listController.close();
    super.dispose();
  }
}
