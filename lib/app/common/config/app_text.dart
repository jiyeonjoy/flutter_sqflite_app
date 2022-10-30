class AppTexts {
  static final AppTexts _instance = AppTexts._internal();

  factory AppTexts() => _instance;

  AppTexts._internal();

  final String home = '홈';
  final String favorites = '즐겨찾기';
  final String searchTextFieldHint = '검색어를 입력해 주세요!';
}
