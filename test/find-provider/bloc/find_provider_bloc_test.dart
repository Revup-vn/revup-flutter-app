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
        const FindListRepairerState.refreshCompleted(
          listItems: [
            [
              'https://this-person-does-not-exist.com/img/avatar-f23a11a46d5096129b42a5254d3134cc.jpg',
              'Nguyen Van C',
              'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
              '4.9',
              '109',
              '500',
              '10',
            ],
            [
              'https://this-person-does-not-exist.com/img/avatar-f23a11a46d5096129b42a5254d3134cc.jpg',
              'Nguyen Van D',
              'Cửa hàng sửa xe A, 14A, ngõ Thanh Bình',
              '4.9',
              '109',
              '500',
              '10',
            ],
          ],
        )
      ],
    );
    blocTest<FindListRepairerBloc, FindListRepairerState>(
      'emit value changed state when onchanged event is added',
      build: () => findListRepairerBloc,
      act: (bloc) =>
          bloc.add(const FindListRepairerEvent.onChanged(value: 'Distance')),
      expect: () => <FindListRepairerState>[
        const FindListRepairerState.valueChanged(value: 'Distance')
      ],
    );

    blocTest<FindListRepairerBloc, FindListRepairerState>(
      'emit pick a repairer state when onTap event is added',
      build: () => findListRepairerBloc,
      act: (bloc) => bloc.add(const FindListRepairerEvent.onTap()),
      expect: () => <FindListRepairerState>[
        const FindListRepairerState.pickARepairer(),
      ],
    );
  });
}
