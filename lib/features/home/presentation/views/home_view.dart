import 'package:flutter/material.dart';

import '../widgets/home_view_body.dart';

class HomView extends StatelessWidget {
  const HomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
