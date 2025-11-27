/// PicrossWidgetの表示パターン
enum DisplayPartern {
  question, // 黒塗りなし
  play, // セルをタップしたら、白黒を切り替え
  answer, // すべて記載
  completed, // 正解表示
}
