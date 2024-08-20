import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'table_state_state.dart';

class TableStateCubit extends Cubit<TableStateState> {
  TableStateCubit() : super(TableStateInitial());
  String tableState = "Short";

  changeTableState({required String state}) {
    tableState = state;
    emit(ChangeTableState());
  }
}
