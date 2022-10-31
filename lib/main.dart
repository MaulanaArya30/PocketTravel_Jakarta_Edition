import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pockettravel_jakarta_edition/cubit/app_cubit_logics.dart';
import 'package:pockettravel_jakarta_edition/cubit/app_cubits.dart';

//Runs the App
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(),
        child: AppCubitLogics(),
      ),
));


