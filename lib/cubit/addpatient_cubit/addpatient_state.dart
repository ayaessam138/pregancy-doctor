part of 'addpatient_cubit.dart';

@immutable
abstract class AddpatientState {}

class AddpatientInitial extends AddpatientState {}

class AddPatientsloading extends AddpatientState {}

class Addpatientsucess extends AddpatientState {
  List<addpatient>? addpatients;
  Addpatientsucess({required this.addpatients});
}
