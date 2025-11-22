import 'package:credpal/model/credpal_class.dart';
import 'package:flutter_riverpod/legacy.dart';

class CredpalNotifier extends StateNotifier<CredpalClass> {
  CredpalNotifier() : super(CredpalClass());

  void toggle(String flag) {
    state = state.copyWith(flag: flag);
  }
}

final credpalProvider = StateNotifierProvider<CredpalNotifier, CredpalClass>((
  ref,
) {
  return CredpalNotifier();
});
