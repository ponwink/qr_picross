import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zxing_lib/common.dart';

part 'qr_picross_info.freezed.dart';

@freezed
abstract class QrPicrossInfo with _$QrPicrossInfo {
  const QrPicrossInfo._();

  const factory QrPicrossInfo({
    required String data, // 文字列
    BitMatrix? bitMatrix, // QRコードのセル情報
    BitMatrix? answerBitMatrix, // 解答のセル情報
    @Default(false) bool isCompleted, // 正解かどうか
  }) = _QrPicrossInfo;

  // 指定行のピクロス情報
  List<int> rowNums(int index) {
    final List<int> nums = [];
    int count = 0;
    for (int i = 0; i < bitMatrix!.width; i++) {
      final isBlack = bitMatrix!.get(i, index);
      if (isBlack) {
        count++;
      } else {
        if (count > 0) {
          nums.add(count);
          count = 0;
        }
      }
    }
    if (count > 0) {
      nums.add(count);
    }
    return nums;
  }

  // 指定列のピクロス情報
  List<int> colNums(int index) {
    final List<int> nums = [];
    int count = 0;
    for (int i = 0; i < bitMatrix!.height; i++) {
      final isBlack = bitMatrix!.get(index, i);
      if (isBlack) {
        count++;
      } else {
        if (count > 0) {
          nums.add(count);
          count = 0;
        }
      }
    }
    if (count > 0) {
      nums.add(count);
    }
    return nums;
  }

  // colNumsの最大配列数
  int maxColNumsCount() {
    if (bitMatrix == null) return 0;
    int maxCount = 0;
    for (int i = 0; i < bitMatrix!.height; i++) {
      maxCount = maxCount > colNums(i).length ? maxCount : colNums(i).length;
    }
    return maxCount;
  }

  // rowNumsの最大配列数
  int maxRowNumsCount() {
    if (bitMatrix == null) return 0;
    int maxCount = 0;
    for (int i = 0; i < bitMatrix!.width; i++) {
      maxCount = maxCount > rowNums(i).length ? maxCount : rowNums(i).length;
    }
    return maxCount;
  }

  // 答えが正解かどうか
  bool checkCompleted() {
    if (bitMatrix == null || answerBitMatrix == null) return false;
    for (int i = 0; i < bitMatrix!.width; i++) {
      for (int j = 0; j < bitMatrix!.height; j++) {
        if (bitMatrix!.get(i, j) != answerBitMatrix!.get(i, j)) return false;
      }
    }
    return true;
  }
}
