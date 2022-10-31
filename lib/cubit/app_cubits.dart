import 'package:bloc/bloc.dart';
import 'app_cubit_states.dart';


//Used to make a state so that the app is on the Initial state everytime started
class AppCubits extends Cubit<CubitStates>{
  AppCubits() : super(InitialState()){
    emit(WelcomeState());
  }
}