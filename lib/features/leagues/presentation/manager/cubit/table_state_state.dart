part of 'table_state_cubit.dart';

sealed class TableStateState {}

final class TableStateInitial extends TableStateState {}
final class ChangeTableState extends TableStateState {}
