import 'package:flutter_test/flutter_test.dart';
import 'package:untitled6/counter_bloc.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc bloc;

    setUp(() {
      bloc = CounterBloc();
    });

    test('initial state is 0', () {
      expect(bloc.state, 0);
    });

    test('emits [1] when Increment is added', () {
      bloc.add(Increment());
      expectLater(bloc.stream, emits(1));
    });

    test('emits [-1] when Decrement is added', () {
      bloc.add(Decrement());
      expectLater(bloc.stream, emits(-1));
    });

    test('emits [99] when Increment is added', () {
      bloc.add(Increment());
      expectLater(bloc.stream, emits(99));
    });

  });
}