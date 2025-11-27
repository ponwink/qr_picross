import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.label,
    this.onPressed,
    this.foregroundColor,
    this.backgroundColor,
  });

  final String label;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        foregroundColor: foregroundColor ?? Colors.white,
        backgroundColor: backgroundColor ?? Colors.indigo.shade700,
        textStyle: const TextStyle(fontSize: 16.0, height: 1.5),
      ),
      child: Text(label),
    );
  }

  factory BaseButton.info({
    required String label,
    VoidCallback? onPressed,
  }) {
    return BaseButton(
      label: label,
      onPressed: onPressed,
      foregroundColor: Colors.white,
      backgroundColor: Colors.green.shade600,
    );
  }

  factory BaseButton.primary({
    required String label,
    VoidCallback? onPressed,
  }) {
    return BaseButton(
      label: label,
      onPressed: onPressed,
      foregroundColor: Colors.white,
      backgroundColor: Colors.indigo.shade700,
    );
  }

  factory BaseButton.warning({
    required String label,
    VoidCallback? onPressed,
  }) {
    return BaseButton(
      label: label,
      onPressed: onPressed,
      foregroundColor: Colors.white,
      backgroundColor: Colors.red.shade600,
    );
  }

  factory BaseButton.light({
    required String label,
    VoidCallback? onPressed,
  }) {
    return BaseButton(
      label: label,
      onPressed: onPressed,
      foregroundColor: Colors.black,
      backgroundColor: Colors.grey.shade300,
    );
  }
}
