import 'package:qr_picross/features/qr_picross/domain/qr_picross_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:zxing_lib/common.dart';
import 'package:zxing_lib/qrcode.dart';
import 'package:zxing_lib/zxing.dart';

part 'qr_picross_provider.g.dart';

@riverpod
class QrPicrossNotifier extends _$QrPicrossNotifier {
  @override
  QrPicrossInfo build() {
    return QrPicrossInfo(data: '');
  }

  // 文字列の設定
  void setData(String data) {
    state = state.copyWith(data: data);
  }

  void createBitMatrix() {
    final writer = QRCodeWriter();
    final hints = EncodeHint(
      errorCorrectionLevel: ErrorCorrectionLevel.L,
      characterSet: 'UTF-8',
      margin: 0,
    );

    final BitMatrix bitMatrix = writer.encode(
      state.data,
      BarcodeFormat.qrCode,
      0,
      0,
      hints,
    );

    state = state.copyWith(
      bitMatrix: bitMatrix,
      answerBitMatrix: BitMatrix(
        bitMatrix.width,
        bitMatrix.height,
      ), // 空のBitMatrix
    );
  }

  // 回答BitMatrixの初期化
  void initAnswerBitMatrix() {
    state = state.copyWith(
      answerBitMatrix: BitMatrix(
        state.bitMatrix!.width,
        state.bitMatrix!.height,
      ),
      isCompleted: false,
    );
  }

  // 回答BitMatrixの白黒切り替え
  void switchAnswerBitMatrix(int x, int y) {
    if (state.answerBitMatrix == null) {
      return;
    }

    final newAnswerBitMatrix = state.answerBitMatrix!.clone();

    if (newAnswerBitMatrix.get(x, y)) {
      newAnswerBitMatrix.unset(x, y);
    } else {
      newAnswerBitMatrix.set(x, y);
    }
    state = state.copyWith(answerBitMatrix: newAnswerBitMatrix);
  }

  // 正解チェック
  void checkCompleted() {
    if (state.checkCompleted()) {
      state = state.copyWith(isCompleted: true);
    }
  }
}
