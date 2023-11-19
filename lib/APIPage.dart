import 'package:flutter/material.dart';
import 'package:flutter_lab_7/Core/Model/user_model.dart';
import 'package:flutter_lab_7/Core/Network/api.dart';
import 'package:flutter_lab_7/User/States/state_notifier.dart';
import 'package:flutter_lab_7/User/States/states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class APIPage extends StatefulWidget 
{
  const APIPage({super.key});

  @override
  State<APIPage> createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Consumer
      (
        builder: (context, watch, child)
        {
          final state = watch(userStateNotifierProvider.state);
          return state.maybeWhen(orElse: const Text('hello'));
        }
      ),
    );
  }
}