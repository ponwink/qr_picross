import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_picross/common/decorations.dart';
import 'package:qr_picross/common/enums/display_partern.dart';
import 'package:qr_picross/common/widgets/base_button.dart';
import 'package:qr_picross/features/qr_picross/presentation/providers/qr_picross_provider.dart';
import 'package:qr_picross/features/qr_picross/presentation/widgets/picross_widget.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({super.key});

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
                        foregroundDecoration: BoxDecoration(
                          color: Colors.grey.withAlpha(128),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: PicrossWidget(
                          displayPartern: DisplayPartern.question,
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

class _BottomButtonGroup extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        BaseButton.light(
          onPressed: () => context.go('/'),
          label: 'タイトルに戻る',
        ),
        Spacer(),
        BaseButton.warning(
          onPressed: () => context.go('/answer'),
          label: '答えを見る',
        ),
        const SizedBox(width: 12),
        BaseButton.primary(
          onPressed: () {
            ref.read(qrPicrossProvider.notifier).initAnswerBitMatrix();
            context.go('/play');
          },
          label: '遊ぶ',
        ),
      ],
    );
  }
}
