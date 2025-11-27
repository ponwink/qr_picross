import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_picross/common/decorations.dart';
import 'package:qr_picross/common/widgets/base_button.dart';
import 'package:qr_picross/features/qr_picross/presentation/providers/qr_picross_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QrPicrossFormScreen extends ConsumerWidget {
  QrPicrossFormScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrPicrossInfo = ref.watch(qrPicrossProvider);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: backgroundDecoration,
        child: Center(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: 720,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'QRピクロスにする文字列',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      counterStyle: TextStyle(color: Colors.grey.shade300),
                    ),
                    maxLength: 77,
                    // 文字数制限を強制する
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    inputFormatters: [
                      // 77文字までに制限
                      LengthLimitingTextInputFormatter(77),
                      // 英数字と記号のみを許可
                      FilteringTextInputFormatter.allow(RegExp(r'[ -~]')),
                    ],
                    onChanged: (value) {
                      ref.read(qrPicrossProvider.notifier).setData(value);
                    },
                  ),
                  Text(
                    '※ ピクロスが大きくなりすぎないように、英数字77文字以内に制限しています。',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: BaseButton.primary(
                      onPressed: qrPicrossInfo.data.isEmpty
                          ? null
                          : () {
                              ref
                                  .read(qrPicrossProvider.notifier)
                                  .createBitMatrix();
                              context.go('/detail');
                            },
                      label: '作成',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
