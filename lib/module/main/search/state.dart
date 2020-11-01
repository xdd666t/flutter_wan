import 'package:fish_redux/fish_redux.dart';

class SearchState implements Cloneable<SearchState> {

  @override
  SearchState clone() {
    return SearchState();
  }
}

SearchState initState(Map<String, dynamic> args) {
  return SearchState();
}
