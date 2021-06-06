import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onTapCancel;
  final VoidCallback onTapNext;
  final bool enabledButtons;
  const BottomStepperBarWidget({
    Key? key,
    required this.onTapCancel,
    required this.onTapNext,
    this.enabledButtons = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              width: 1.0, color: AppTheme.colors.border.withOpacity(0.8)),
        ),
      ),
      height: 72,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StepperNextButtonWidget(
            label: "Cancelar",
            onTap: onTapCancel,
          ),
          Container(
            width: 1,
            height: 72,
            color: AppTheme.colors.border.withOpacity(0.8),
          ),
          StepperNextButtonWidget(
            label: "Continuar",
            enabled: enabledButtons,
            onTap: onTapNext,
          ),
        ],
      ),
    );
  }
}
