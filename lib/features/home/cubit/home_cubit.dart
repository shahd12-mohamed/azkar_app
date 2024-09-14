import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit() : super(HomeInitialStates());

  static HomeCubit get(context) => BlocProvider.of(context);

  int counter=0;
  int counter2=0;
  int counter3=0;
  int rating=0;
  int total=0;

  void minus(){
    total=total-99;
    counter--;
    emit(HomeMinusStates(counter));
  }
  void minus2(){
    counter2--;
    emit(HomeMinusStates(counter2));
  }
  void minus3(){
    counter3--;
    emit(HomeMinusStates(counter3));
  }
  void plus(){
    total=total+99;
    counter++;
    emit(HomePlusStates(counter));
  }
  void plus2(){
    counter2++;
    emit(HomePlusStates(counter2));
  }
  void plus3(){
    counter3++;
    emit(HomePlusStates(counter3));
  }
  void zero(){
    counter=0;
    counter2=0;
    counter3=0;
    emit(HomeZeroStates(counter));
  }





}