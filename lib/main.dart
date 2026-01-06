import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/api_services.dart';
import 'core/utils/app_router.dart';
import 'core/utils/services_locator.dart';
import 'features/home/data/repo/home_repo_implement.dart';
import 'features/home/pressentation/viewsmodels/featuresBooksCubit/feature_books_cubit.dart';
import 'features/home/pressentation/viewsmodels/newestBooksCubit/new_books_cubit.dart';


void main() {
setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>FeatureBooksCubit(getIt.get<HomeRepoImp>())..fetchFeatureBooks(),),
        BlocProvider(create: (context)=>NewBooksCubit(getIt.get<HomeRepoImp>())..fetchNewBooks(),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,

        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme
          ),
        ),

      ),
    );
  }
}


