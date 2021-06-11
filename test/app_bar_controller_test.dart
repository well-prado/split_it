import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';

class AppBarRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late AppBarController controller;
  late HomeRepository repository;
  setUp(() {
    repository = AppBarRepositoryMock();
    controller = AppBarController(repository: repository);
  });

  test("Testando o GetDashboard - Success", () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());
    final states = <AppBarState>[];
    mobx.autorun((_) {
      states.add(controller.state);
    });
    when(repository.getDashboard)
        .thenAnswer((_) async => DashboardModel(send: 100, receive: 50));
    await controller.getDashboard();
    expect(states[0], isInstanceOf<AppBarStateEmpty>());
    expect(states[1], isInstanceOf<AppBarStateLoading>());
    expect(states[2], isInstanceOf<AppBarStateSuccess>());
    expect(states.length, 3);
  });

  test("Testando o GetDashboard - Failure", () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());
    final states = <AppBarState>[];
    mobx.autorun((_) {
      states.add(controller.state);
    });
    when(repository.getDashboard).thenThrow("Deu erro");
    await controller.getDashboard();
    expect(states[0], isInstanceOf<AppBarStateEmpty>());
    expect(states[1], isInstanceOf<AppBarStateFailure>());
    expect((states[1] as AppBarStateFailure).message, "Deu erro");
    expect(states.length, 2);
  });
}
