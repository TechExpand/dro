import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'supplement_state.dart';

class SupplementCubit extends Cubit<SupplementState> {
  SupplementCubit() : super(SupplementInitial());
}
