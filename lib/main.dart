import 'package:bookly_mvvm/core/utils/service_locator.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/cubit/best_seller_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/cubit/featured_books_cubit.dart';
import 'package:bookly_mvvm/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              homeRepo: getIt.get<HomeRepo>(),
            )..getFeaturedBooks();
          },
        ),
        BlocProvider(create: (context) {
          return BestSellerCubit(homeRepo: getIt.get<HomeRepo>())
            ..getBesetSellerBooks();
        })
      ],
      child: GetMaterialApp(
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
