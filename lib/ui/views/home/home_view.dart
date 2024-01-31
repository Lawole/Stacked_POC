import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:dummy_project_2/ui/common/app_colors.dart';
import 'package:dummy_project_2/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        actions: [
          SizedBox(
            height: 50,
            width: 50,
            child: FittedBox(
              fit: BoxFit.contain,
              child: IconButton(
                  onPressed: viewModel.navigateToSettingsView,
                  icon: const Icon(Icons.settings))
            )),

            SizedBox(
              height: 25,
              width: 25,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Switch(
                    value: viewModel.isDarkMode,
                    onChanged: viewModel.toggleSwitch),
              )
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  'Hello, STACKED!',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                verticalSpaceMedium,
                MaterialButton(
                  color: Colors.black,
                  onPressed: viewModel.incrementCounter,
                  child: Text(
                    viewModel.counterLabel,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: viewModel.navigateToLoginView,
                    style: ElevatedButton.styleFrom(elevation: 10),
                    child: const Text("Login"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(elevation: 10),
                      onPressed: viewModel.navigateToProfileView,
                      child: const Text("Profile")),
                )
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     MaterialButton(
            //       color: kcDarkGreyColor,
            //       onPressed: viewModel.showDialog,
            //       child: const Text(
            //         'Show Dialog',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //     MaterialButton(
            //       color: kcDarkGreyColor,
            //       onPressed: viewModel.showBottomSheet,
            //       child: const Text(
            //         'Show Bottom Sheet',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
