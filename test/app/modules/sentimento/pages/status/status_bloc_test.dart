import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_pensamento/app/modules/sentimento/pages/status/status_bloc.dart';
import 'package:flutter_pensamento/app/modules/sentimento/sentimento_module.dart';

void main() {

  initModule(SentimentoModule());
  StatusBloc bloc;
  
  setUp(() {
      bloc = SentimentoModule.to.bloc<StatusBloc>();
  });

  group('StatusBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<StatusBloc>());
    });
  });

}
  