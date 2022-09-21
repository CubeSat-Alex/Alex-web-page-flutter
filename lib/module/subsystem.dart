import 'package:alex_cube/module/subsystems/adcs.dart';
import 'package:alex_cube/module/subsystems/communication.dart';
import 'package:alex_cube/module/subsystems/obc.dart';
import 'package:alex_cube/module/subsystems/payload.dart';
import 'package:alex_cube/module/subsystems/structure.dart';
import 'package:alex_cube/module/subsystems/tt&m.dart';
import 'package:flutter/material.dart';
import '../../shared/cubit.dart';

class SubSystems extends StatelessWidget {
  const SubSystems(String? dropdownValue, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return (cubit.dropdownValue=='ADCS'?const ADCS():(cubit.dropdownValue=='OBC'?const OBC():
    (cubit.dropdownValue=='Telemetry'?const Telemetry():(cubit.dropdownValue=='Communication'?const Communication():
    (cubit.dropdownValue=='Payload'?const Payload():const Structure())))));
  }
}


