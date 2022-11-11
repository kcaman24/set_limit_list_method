import 'package:set_limit_list/set_limit_list.dart' as lib;

void main(List<String> arguments) {
  final int limit = 2;
  final List list = [0, 1, 2, 3, 4, 5, 6, 7];
  print(lib.setLimitList(list, limit));
}
