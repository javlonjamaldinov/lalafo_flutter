import 'package:flutter/material.dart';
import 'package:lalafo_flutter/src/presentation/ui/theme/my_color.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitched,
      onChanged: (value) {
        setState(() {
          _isSwitched = value;
        });
      },
      activeTrackColor: AppColors.green, 
      activeColor: AppColors.white, 
      inactiveTrackColor:
          Colors.grey.shade400, 
      focusColor: AppColors.green,
      inactiveThumbColor: AppColors.white,
      thumbColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return _isSwitched ? AppColors.white : Colors.grey.shade100;
        }
        return Colors.grey.shade100;
      }),
    );
  }
}
