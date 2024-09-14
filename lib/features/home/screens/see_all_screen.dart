import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/shared.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_states.dart';

class SeeAllScreen extends StatefulWidget{
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state){
          if(state is HomeInitialStates){
            debugPrint('intial state');
          }
          if(state is HomeMinusStates){
            debugPrint('munis state ${state.counter} ');
          }
          if(state is HomePlusStates){
            debugPrint('plus state ${state.counter}');
          }
        },
        builder: (context, state){
          return SafeArea(
            child: Scaffold(
              body: PageView(
                controller: controller,
                onPageChanged: (page) => {debugPrint(page.toString())},
                pageSnapping: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}',cr:Colors.amber, onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'سبحان الله',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}',cr:Colors.blue, onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'سبحان الله وبحمده',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}',cr:Colors.indigo, onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'سبحان الله والحمدلله',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}',cr:Colors.blueGrey, onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'سبحان الله العظيم وبحمده',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}', cr:Colors.lightGreen,onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'سبحان الله وبحمده, سبحان الله العظيم',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}',cr:Colors.tealAccent, onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'لا اله الا الله وحده لا شريك له, له الملك وله الحمد وهو علي كل شْئ قدير.',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}', cr: Colors.brown,onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'لا حول ولا قوة الا بالله',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}', cr: Colors.pink,onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'الحمد لله رب العالمين',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}',cr: Colors.lime, onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'اللهم صل وسلم وبارك علي سيدنا محمد',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}',cr: Colors.grey, onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'استغفر الله',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}', cr:Colors.deepPurpleAccent,onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'سبحان الله, والحمد لله, ولا اله الا الله, والله اكبر',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}', cr:Colors.redAccent,onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'لا اله الا الله',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:col(tex: '${HomeCubit.get(context).counter}', cr:Colors.cyanAccent,onpressd: (){
                      HomeCubit.get(context).plus();
                    }, name: 'الله اكبر',onpresd: (){
                      HomeCubit.get(context).zero();
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}