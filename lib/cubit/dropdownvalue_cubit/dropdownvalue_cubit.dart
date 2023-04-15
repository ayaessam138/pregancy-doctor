import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dropdownvalue_state.dart';

class DropdownvalueCubit extends Cubit<DropdownvalueState> {
  DropdownvalueCubit() : super(DropdownvalueNormal());
}
