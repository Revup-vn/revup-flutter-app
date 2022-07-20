import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:revup/find_provider/bloc/find_list_repairer_bloc.dart';

void main() {
  group('LoginBloc', () {
    late FindListRepairerBloc findListRepairerBloc;

    setUp(() {
      findListRepairerBloc = FindListRepairerBloc();
    });
    blocTest<FindListRepairerBloc, FindListRepairerState>(
      'emit initial state when started event is added',
      build: () => findListRepairerBloc,
      act: (bloc) =>
          bloc.add(const FindListRepairerEvent.started(hasValue: false)),
      expect: () => <FindListRepairerState>[
        const FindListRepairerState.initial(hasValue: false)
      ],
    );
    blocTest<FindListRepairerBloc, FindListRepairerState>(
      'emit refresh completed when fresh event is added',
      build: () => findListRepairerBloc,
      act: (bloc) => bloc.add(const FindListRepairerEvent.refresh()),
      expect: () => <FindListRepairerState>[
        const FindListRepairerState.refreshSuccess(
          listProvider: [],
        )
      ],
    );
    blocTest<FindListRepairerBloc, FindListRepairerState>(
      'emit value changed state when onchanged event is added',
      build: () => findListRepairerBloc,
      act: (bloc) => bloc.add(
        const FindListRepairerEvent.dropdownListChanged(sortType: 'Distance'),
      ),
      expect: () => <FindListRepairerState>[
        const FindListRepairerState.dropdownListChangedSuccess(
          sortType: 'Distance',
          listProvider: [],
        )
      ],
    );
  });
}
