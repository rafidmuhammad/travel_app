import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void addItem(String id) {
    print('Before $state');
    if (!isSelected(id)) {
      state.add(id);
    } else if (isSelected(id)) {
      state.remove(id);
    }
    emit(List.from(state));
    print('After $state');
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
