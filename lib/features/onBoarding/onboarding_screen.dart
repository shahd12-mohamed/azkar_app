import 'package:azkar_app/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../core/shared.dart';

class OnboardingScreen extends StatelessWidget{
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            my_text(T: 'مرحبا في تطبيق أذكار', siz: 20,
            font: FontWeight.bold),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: defaultButton(height: 50,width: 120, background: Colors.purple,
                  function: (){},
                  onpresed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                  }, text: 'الدخول للتطبيق'),
            ),
            defaultButton(height:50,width: 120, background: Colors.purple,function:(){},
                onpresed: (){Navigator.of(context).pop();}, text: 'الخروج من التطبيق'),
          ],
        ),
      ),
    );
  }

}