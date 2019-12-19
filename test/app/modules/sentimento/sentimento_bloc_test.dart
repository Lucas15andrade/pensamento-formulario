import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_pensamento/app/modules/sentimento/sentimento_bloc.dart';
import 'package:flutter_pensamento/app/modules/sentimento/sentimento_module.dart';

void main() {

  initModule(SentimentoModule());
  SentimentoBloc bloc;
  
  setUp(() {
      bloc = SentimentoModule.to.bloc<SentimentoBloc>();
  });

  group('SentimentoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<SentimentoBloc>());
    });
  });

}
  