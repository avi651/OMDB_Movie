import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'bloc/omdb_cubit/omdb_cubit.dart';
import 'bloc/omdb_detail_cubit/omdb_detial_cubit.dart';
import 'screens/omdb_splash_screen.dart';
import 'services/omdb_services.dart';
import 'bloc_observer/omdb_bloc_observer.dart';
import 'repository/omdb_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = OMDBBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<OMDBRepository>(
          create: (context) => OMDBRepository(omdbServices: OMDBApiServices()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<OMDBCubit>(
            create: (context) =>
                OMDBCubit(omdbRepository: context.read<OMDBRepository>()),
          ),
          BlocProvider<OMDBDetailCubit>(
            create: (context) =>
                OMDBDetailCubit(omdbRepository: context.read<OMDBRepository>()),
          ),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Movie OMDB',
          theme: ThemeData.dark(),
          home: const OMDBSplashScreen(),
        ),
      ),
    );
  }
}
