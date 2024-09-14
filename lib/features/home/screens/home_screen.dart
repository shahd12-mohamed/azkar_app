import 'package:azkar_app/features/home/screens/see_all_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/shared.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_states.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state){
          if(state is HomeInitialStates){
            debugPrint('initial state');
          }
          if(state is HomeMinusStates){
            debugPrint('minus state ${state.counter} ');
          }
          if(state is HomePlusStates){
            debugPrint('plus state ${state.counter}');
          }
        },
        builder:  (context, state){
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.blueGrey,
              body: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  right: 15,
                  left: 15,
                  bottom: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    container(tex: '${HomeCubit.get(context).counter}',name: 'سبحان الله',onpressd: (){
                      HomeCubit.get(context).plus();
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    container(tex: '${HomeCubit.get(context).counter2}',name: 'الحمدلله',onpressd: (){
                      HomeCubit.get(context).plus2();
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    container(tex: '${HomeCubit.get(context).counter3}',name: 'الله اكبر',onpressd: (){
                      HomeCubit.get(context).plus3();
                    }
                    ),
                    const SizedBox(height: 25,),
                    defaultButton(height: 50,width: 350, background: Colors.purple, function: (){}, onpresed: (){
                      HomeCubit.get(context).zero();
                    },text: 'Reset'),
                    const SizedBox(height: 25,),
                    defaultButton(height: 50,width: 350, background: Colors.purple, function: (){}, onpresed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SeeAllScreen()));
                    },text: 'See All'),



                  ],
                ),
              ),
            ),
          );
        },
      ),
    );


  }

}