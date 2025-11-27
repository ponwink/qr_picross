import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_picross/common/enums/display_partern.dart';
import 'package:qr_picross/features/qr_picross/domain/qr_picross_info.dart';
import 'package:qr_picross/features/qr_picross/presentation/providers/qr_picross_provider.dart';

class PicrossWidget extends ConsumerWidget {
  const PicrossWidget({required this.displayPartern, super.key});

  final DisplayPartern displayPartern; // 表示パターン

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final QrPicrossInfo qrPicrossInfo = ref.watch(qrPicrossProvider);

    final height = qrPicrossInfo.bitMatrix?.height ?? 0;
    final width = qrPicrossInfo.bitMatrix?.width ?? 0;

    // heightの数だけ、_PicrossCell()を持つ配列を作成
    final cells = List.generate(
      height,
      (i) => TableRow(
        children: [
          Container(
            padding: EdgeInsets.only(right: 8.0),
            alignment: Alignment.centerRight,
            color: Colors.white,
            child: Text(qrPicrossInfo.rowNums(i).join("  ")),
          ),
          ...List.generate(
            width,
            (j) => _PicrossCell(
              displayPartern: displayPartern,
              x: j,
              y: i,
            ),
          ),
        ],
      ),
    );

    cells.insertAll(0, [
      TableRow(
        children: [
          SizedBox.shrink(),
          ...List.generate(
            width,
            (j) => TableCell(
              verticalAlignment: TableCellVerticalAlignment.bottom,
              child: Container(
                height: qrPicrossInfo.maxColNumsCount() * 20,
                alignment: Alignment.bottomCenter,
                color: Colors.white,
                child: Text(qrPicrossInfo.colNums(j).join("\n")),
              ),
            ),
          ),
        ],
      ),
    ]);

    // TableBorderを使用して、上と左の罫線をなくします。
    return Table(
      defaultColumnWidth: const FixedColumnWidth(20.0),
      columnWidths: <int, TableColumnWidth>{
        0: FixedColumnWidth(
          qrPicrossInfo.maxRowNumsCount() * 16,
        ),
      },
      border: const TableBorder(
        top: BorderSide.none,
        left: BorderSide.none,
        right: BorderSide(color: Colors.grey, width: 1),
        bottom: BorderSide(color: Colors.grey, width: 1),
        horizontalInside: BorderSide(color: Colors.grey, width: 1),
        verticalInside: BorderSide(color: Colors.grey, width: 1),
      ),
      children: cells,
    );
  }
}

/// ピクロスのセルのWidget
class _PicrossCell extends ConsumerWidget {
  const _PicrossCell({
    required this.displayPartern,
    required this.x,
    required this.y,
  });

  final DisplayPartern displayPartern; // 表示パターン
  final int x;
  final int y;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrPicrossInfo = ref.watch(qrPicrossProvider);
    final isBlack = qrPicrossInfo.bitMatrix?.get(x, y) ?? false;
    final isAnswerBlack = qrPicrossInfo.answerBitMatrix?.get(x, y) ?? false;

    return GestureDetector(
      onTap: displayPartern == DisplayPartern.play
          ? () {
              ref.read(qrPicrossProvider.notifier).switchAnswerBitMatrix(x, y);
              ref.read(qrPicrossProvider.notifier).checkCompleted();
            }
          : null,
      child: Container(
        height: 20,
        width: 20,
        color:
            displayPartern == DisplayPartern.answer && isBlack ||
                displayPartern == DisplayPartern.play && isAnswerBlack
            ? Colors.black
            : Colors.white,
        child: SizedBox.shrink(),
      ),
    );
  }
}
