
import 'package:bookly/core/utils/services_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/data/repo/home_repo_implement.dart';
import '../../features/home/pressentation/views/book_details_view.dart';
import '../../features/home/pressentation/views/home.dart';
import '../../features/home/pressentation/viewsmodels/similarBooksCubit/similar_books_cubit.dart';
import '../../features/search/data/search_repo_implement.dart';
import '../../features/search/pressentation/views/search_view.dart';
import '../../features/search/pressentation/viewsmodel/search_view_cubit.dart';
import '../../features/splash/pressentation/views/splash_view.dart';



abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),

      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context)=> SimilarBooksCubit(
              getIt.get<HomeRepoImp>(),
            ),
            child:  BookDetailsView(bookModel: state.extra as BookModel,)),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeScreen(),
      ),

      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
            create: (context)=> SearchViewCubit(
              getIt.get<SearchRepoImplement>(),
            ),
            child: const SearchView()),
      ),
     /* GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),*/
    ],
  );
}
