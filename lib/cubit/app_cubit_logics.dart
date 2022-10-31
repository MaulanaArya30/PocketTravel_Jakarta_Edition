import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pockettravel_jakarta_edition/cubit/app_cubit_states.dart';
import 'package:pockettravel_jakarta_edition/cubit/app_cubits.dart';
import 'package:pockettravel_jakarta_edition/pages/welcome_page.dart';


class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

//This Widget allows for button to change the initial stage to
// the welcome state which will return the welcome page

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: BlocBuilder<AppCubits,CubitStates>(
        builder: (context, state){
          if(state is WelcomeState){
            return WelcomePage();
          }else{
            return Container();
          }
        },
      ),
    );
  }
}
