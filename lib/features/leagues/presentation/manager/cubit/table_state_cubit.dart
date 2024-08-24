
import 'package:flutter_bloc/flutter_bloc.dart';

part 'table_state_state.dart';

class TableStateCubit extends Cubit<TableStateState> {
  TableStateCubit() : super(TableStateInitial());
  String tableState = "Short";

  changeTableState({required String state}) {
    tableState = state;
    emit(ChangeTableState());
  }
}
