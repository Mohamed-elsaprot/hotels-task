import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels_task/core/utils/service_locator.dart';
import 'package:hotels_task/features/hotels_screen/data/hotels_repo_impl.dart';
import 'package:hotels_task/features/hotels_screen/manager/hotels_cubit.dart';
import 'package:hotels_task/features/hotels_screen/view/hotels_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRouter {
  static const hotelsScreenRouter = '/';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: hotelsScreenRouter,
        builder: (BuildContext context, GoRouterState state)=>
            BlocProvider(create: (context)=> HotelsCubit(getIt.get<HotelsRepoImpl>())..getHotelsData(),
              child: const HotelsScreen(),)
    ),
  ]);
}
