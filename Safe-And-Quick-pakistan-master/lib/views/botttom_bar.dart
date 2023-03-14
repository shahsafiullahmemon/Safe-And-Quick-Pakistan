import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:squip/view_models/bottom_bar_viewmodel.dart';
import 'package:stacked/stacked.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BottomBarViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: IndexedStack(
              index: viewModel.current_index,
              children: viewModel.screens,
            ),
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: viewModel.current_index,
              onTap: (i) => viewModel.updateCurrentIndex(i),
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: Icon(Icons.home_rounded),
                  title: Text("Home Page"),
                  selectedColor: Colors.blue,
                ),

                /// Likes
                SalomonBottomBarItem(
                  icon: Icon(Icons.medical_services),
                  title: Text("Services"),
                  selectedColor: Colors.blue,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.map),
                  title: Text("Map"),
                  selectedColor: Colors.blue,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                  selectedColor: Colors.blue,
                ),
              ],
            ),
          );
        });
  }
}
