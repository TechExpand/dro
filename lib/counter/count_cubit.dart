import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountState(number: 1));

  void increament()=> emit(CountState(number: state.number + 1));
  void decreament(){
    if(state.number ==1 ){
    }else{
      return  emit(CountState(number: state.number - 1));
    }
  }
}
