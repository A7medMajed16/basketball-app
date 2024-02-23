import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamAIncrement({required int buttonNumber}) {
    teamAPoints += buttonNumber;
    emit(CounterAIncrementState());
  }

  void teamBIncrement({required int buttonNumber}) {
    teamBPoints += buttonNumber;
    emit(CounterBIncrementState());
  }
}
