import 'package:bookly/features/home/pressentation/views/widget/home_body_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyView(),
    );
  }
}
