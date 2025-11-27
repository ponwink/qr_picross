import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_picross/common/decorations.dart';
import 'package:qr_picross/common/enums/display_partern.dart';
import 'package:qr_picross/common/widgets/base_button.dart';
import 'package:qr_picross/features/qr_picross/presentation/providers/qr_picross_provider.dart';
import 'package:qr_picross/features/qr_picross/presentation/widgets/picross_widget.dart';

class PlayScreen extends HookConsumerWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isStarted = useState(false); // プレイを開始したかどうか
    final isCompleted = useState(false); // プレイを終了したかどうか

    ref.listen(qrPicrossProvider.select((state) => state.isCompleted), (
      previous,
      next,
    ) {
      if (next) {
        if (!isCompleted.value) {
          // ダイアログを表示
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: const Text('完成しました！'),
              actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('閉じる'),
                ),
              ],
            ),
          );
        }
      }
      isCompleted.value = true;
    });

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
                          color: isStarted.value
                              ? Colors.transparent
                              : Colors.grey.withAlpha(128),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: PicrossWidget(
                          displayPartern: isCompleted.value
                              ? DisplayPartern.answer
                              : isStarted.value
                              ? DisplayPartern.play
                              : DisplayPartern.question,
                        ),
                      ),
                      const SizedBox(height: 48),
                      _BottomButtonGroup(
                        onPlay: isStarted.value
                            ? null
                            : () => isStarted.value = true,
                      ),
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
  final VoidCallback? onPlay;

  const _BottomButtonGroup({this.onPlay});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BaseButton.light(
          onPressed: () => context.go('/detail'),
          label: '戻る',
        ),
        Spacer(),
        BaseButton.primary(
          onPressed: onPlay,
          label: 'スタート',
        ),
      ],
    );
  }
}
