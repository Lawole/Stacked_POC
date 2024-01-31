import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:dummy_project_2/ui/views/login/login_viewmodel.dart';
import '../../common/app_colors.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Here"),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 1,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
