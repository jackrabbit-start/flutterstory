import 'package:flutter/material.dart';
import 'package:study_random_dice/const/colors.dart';

class SettingScreen extends StatelessWidget {
  final double threshold;

  final ValueChanged<double> onThresholdChange;

  const SettingScreen({
    Key? key,
    required this.threshold,
    required this.onThresholdChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Text(
                '민감도',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
        Slider(
          value: threshold,
          onChanged: onThresholdChange,
          min: 0.1,
          max: 10.0,
          divisions: 101,
          label: threshold.toStringAsFixed(1),
        ),
      ],
    );
  }
}
