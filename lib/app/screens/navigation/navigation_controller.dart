import 'package:mobx/mobx.dart';
part 'navigation_controller.g.dart';

class NavigatorController = _NavigatorControllerBase with _$NavigatorController;

abstract class _NavigatorControllerBase with Store {
  @observable
  int currentPage = 0;

  @action
  void setCurrentPage(int value) => currentPage = value;
}
