import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_picross/common/decorations.dart';
import 'package:qr_picross/common/enums/display_partern.dart';
import 'package:qr_picross/common/widgets/base_button.dart';
import 'package:qr_picross/features/qr_picross/presentation/widgets/picross_widget.dart';

class AnswerScreen extends ConsumerWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: backgroundDecoration,
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Center(
                child: Container(
                  width: 1000,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: PicrossWidget(
                          displayPartern: DisplayPartern.answer,
                        ),
                      ),
                      const SizedBox(height: 48),
                      _BottomButtonGroup(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BottomButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BaseButton.light(
          onPressed: () => context.go('/detail'),
          label: '戻る',
        ),
      ],
    );
  }
}
