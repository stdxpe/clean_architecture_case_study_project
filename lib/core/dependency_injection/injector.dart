import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'package:case_study_clean_architecture_project/core/services/logger/logger_service.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_client.dart';
import 'package:case_study_clean_architecture_project/core/services/network/auth_interceptor.dart';
import 'package:case_study_clean_architecture_project/core/utilities/utilities_library_imports.dart';
import 'package:case_study_clean_architecture_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:case_study_clean_architecture_project/core/settings/settings_bloc/settings_bloc.dart';
import 'package:case_study_clean_architecture_project/features/auth/domain/usecases/auth_usecases.dart';
import 'package:case_study_clean_architecture_project/core/services/storage/local_storage_service.dart';
import 'package:case_study_clean_architecture_project/features/home/domain/usecases/home_usecases.dart';
import 'package:case_study_clean_architecture_project/core/services/locale/locale_settings_service.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_client_impl_dio.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_connection_service.dart';
import 'package:case_study_clean_architecture_project/core/services/storage/local_storage_service_impl.dart';
import 'package:case_study_clean_architecture_project/features/auth/domain/repositories/auth_repository.dart';
import 'package:case_study_clean_architecture_project/core/services/locale/locale_settings_service_impl.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/usecases/profile_usecases.dart';
import 'package:case_study_clean_architecture_project/core/services/logger/firebase_logger_service_impl.dart';
import 'package:case_study_clean_architecture_project/core/services/secure_storage/secure_storage_service.dart';
import 'package:case_study_clean_architecture_project/features/home/domain/repositories/movies_repository.dart';
import 'package:case_study_clean_architecture_project/core/services/navigation/navigation_stream_notifier.dart';
import 'package:case_study_clean_architecture_project/core/services/navigation/navigation_redirect_service.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:case_study_clean_architecture_project/features/auth/presentation/bloc/sign_up/sign_up_bloc.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:case_study_clean_architecture_project/core/services/network/network_connection_service_impl.dart';
import 'package:case_study_clean_architecture_project/features/home/data/repositories/movies_repository_impl.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:case_study_clean_architecture_project/features/profile/domain/repositories/profile_repository.dart';
import 'package:case_study_clean_architecture_project/core/services/image_processing/image_processing_service.dart';
import 'package:case_study_clean_architecture_project/features/home/data/datasources/movies_remote_data_source.dart';
import 'package:case_study_clean_architecture_project/core/services/secure_storage/secure_storage_service_impl.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:case_study_clean_architecture_project/features/auth/data/datasources/auth_remote_data_source_impl.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:case_study_clean_architecture_project/core/services/image_processing/image_processing_service_impl.dart';
import 'package:case_study_clean_architecture_project/features/home/data/datasources/movies_remote_data_source_impl.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher.dart';
import 'package:case_study_clean_architecture_project/features/profile/data/datasources/profile_remote_data_source_impl.dart';
import 'package:case_study_clean_architecture_project/core/settings/global_event_dispatcher/global_event_dispatcher_impl.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/favorite_movies/favorite_movies_bloc.dart';
import 'package:case_study_clean_architecture_project/features/profile/presentation/bloc/profile_photo_update/profile_photo_update_bloc.dart';

GetIt getIt = GetIt.instance;

/// [DEPENDENCY INJECTION SERVICE]

Future<void> initializeDependencyInjectionService() async {
  /// [FlutterSecureStorage] registered as @LazySingleton
  getIt.registerLazySingleton<FlutterSecureStorage>(() {
    return const FlutterSecureStorage();
  });

  /// [FirebaseCrashlytics] registered as @LazySingleton
  getIt.registerLazySingleton<FirebaseCrashlytics>(() {
    return FirebaseCrashlytics.instance;
  });

  /// [FirebaseAnalytics] registered as @LazySingleton
  getIt.registerLazySingleton<FirebaseAnalytics>(() {
    return FirebaseAnalytics.instance;
  });

  /// [NetworkConnectionService] Registered as @LazySingleton
  /// Abstract [NetworkConnectionService] → Concrete [NetworkConnectionServiceImpl]
  getIt.registerLazySingleton<NetworkConnectionService>(
    () => NetworkConnectionServiceImpl(InternetConnection.createInstance()),
  );

  /// [LoggerService] Registered as @LazySingleton
  /// Abstract [LoggerService] → Concrete [FirebaseLoggerServiceImpl]
  getIt.registerLazySingleton<LoggerService>(() {
    return FirebaseLoggerServiceImpl(
      getIt<FirebaseCrashlytics>(),
      getIt<FirebaseAnalytics>(),
    );
  });

  /// [TokenStorageService] registered as @LazySingleton
  /// Abstract [TokenStorageService] → Concrete [TokenStorageServiceImpl]
  getIt.registerLazySingleton<SecureStorageService>(() {
    return SecureStorageServiceImpl(getIt<FlutterSecureStorage>());
  });

  /// [Dio] registered as @LazySingleton
  getIt.registerLazySingleton<Dio>(Dio.new);

  /// [AuthInterceptor] registered as @LazySingleton
  getIt.registerLazySingleton<AuthInterceptor>(() {
    return AuthInterceptor(getIt<SecureStorageService>());
  });

  /// [NetworkClient] Registered as @LazySingleton
  /// Abstract [NetworkClient] → Concrete [NetworkClientImplDio]
  getIt.registerLazySingleton<NetworkClient>(() {
    return NetworkClientImplDio(
      getIt<Dio>(),
      getIt<AuthInterceptor>(),
      getIt<NetworkConnectionService>(),
    );
  });

  /// [ImagePicker] registered as @LazySingleton
  getIt.registerLazySingleton<ImagePicker>(ImagePicker.new);

  /// [ImageProcessingService] Registered as @LazySingleton
  /// Abstract [ImageProcessingService] → Concrete [ImageProcessingServiceImpl]
  getIt.registerLazySingleton<ImageProcessingService>(() {
    return ImageProcessingServiceImpl(getIt<ImagePicker>());
  });

  /// DATASOURCES

  /// [AuthRemoteDataSource] registered as @LazySingleton
  /// Abstract [AuthRemoteDataSource] → Concrete [AuthRemoteDataSourceImpl]
  getIt.registerLazySingleton<AuthRemoteDataSource>(() {
    return AuthRemoteDataSourceImpl(getIt<NetworkClient>());
  });

  /// [MoviesRemoteDataSource] registered as @LazySingleton
  /// Abstract [MoviesRemoteDataSource] → Concrete [MoviesRemoteDataSourceImpl]
  getIt.registerLazySingleton<MoviesRemoteDataSource>(() {
    return MoviesRemoteDataSourceImpl(getIt<NetworkClient>());
  });

  /// [ProfileRemoteDataSource] registered as @LazySingleton
  /// Abstract [ProfileRemoteDataSource] → Concrete [ProfileRemoteDataSourceImpl]
  getIt.registerLazySingleton<ProfileRemoteDataSource>(() {
    return ProfileRemoteDataSourceImpl(getIt<NetworkClient>());
  });

  /// [GlobalEventDispatcher] registered as @LazySingleton
  getIt.registerSingleton<GlobalEventDispatcher>(GlobalEventDispatcherImpl());

  /// REPOSITORIES

  /// [AuthRepository] registered as @LazySingleton
  /// Abstract [AuthRepository] → Concrete [AuthRepositoryImpl]
  getIt.registerLazySingleton<AuthRepository>(() {
    return AuthRepositoryImpl(
      getIt<AuthRemoteDataSource>(),
      getIt<SecureStorageService>(),
    );
  });

  /// [MoviesRepository] registered as @LazySingleton
  /// Abstract [MoviesRepository] → Concrete [MoviesRepositoryImpl]
  getIt.registerLazySingleton<MoviesRepository>(() {
    return MoviesRepositoryImpl(getIt<MoviesRemoteDataSource>());
  });

  /// [ProfileRepository] registered as @LazySingleton
  /// Abstract [ProfileRepository] → Concrete [ProfileRepositoryImpl]
  getIt.registerLazySingleton<ProfileRepository>(() {
    return ProfileRepositoryImpl(getIt<ProfileRemoteDataSource>());
  });

  /// USECASES

  /// [AuthUseCases] registered as @LazySingleton
  getIt.registerLazySingleton<AuthUseCases>(() {
    return AuthUseCases(getIt<AuthRepository>());
  });

  /// [MoviesUseCases] registered as @LazySingleton
  getIt.registerLazySingleton<HomeUseCases>(() {
    return HomeUseCases(getIt<MoviesRepository>());
  });

  /// [ProfileUseCases] registered as @LazySingleton
  getIt.registerLazySingleton<ProfileUseCases>(() {
    return ProfileUseCases(
      getIt<ProfileRepository>(),
      getIt<ImageProcessingService>(),
    );
  });

  getIt.registerSingleton<Box<dynamic>>(
    await Hive.openBox(AppConstants.paths.hiveBox),
    instanceName: AppConstants.paths.hiveBox,
  );

  final localStorage = await LocalStorageServiceImpl.init();
  getIt.registerSingleton<LocalStorageService>(localStorage);
  getIt.registerSingleton<LocaleSettingsService>(
    LocaleSettingsServiceImpl(localStorage),
  );

  /// Bloc Registrations

  /// [SettingsBloc] registered as @Singleton
  getIt.registerSingleton<SettingsBloc>(
    SettingsBloc(
      getIt<LocaleSettingsService>(),
      getIt<GlobalEventDispatcher>(),
      getIt<NetworkConnectionService>(),
    ),
    dispose: (bloc) => bloc.close(),
  );

  /// [AuthBloc] registered as @Singleton
  getIt.registerSingleton<AuthBloc>(
    AuthBloc(getIt<AuthUseCases>(), getIt<GlobalEventDispatcher>()),
    dispose: (bloc) => bloc.close(),
  );

  /// [SignInBloc] registered as @Factory
  getIt.registerFactory<SignInBloc>(() {
    return SignInBloc(getIt<AuthUseCases>(), getIt<GlobalEventDispatcher>());
  });

  /// [SignUpBloc] registered as @Factory
  getIt.registerFactory<SignUpBloc>(() {
    return SignUpBloc(getIt<AuthUseCases>(), getIt<GlobalEventDispatcher>());
  });

  /// [HomeBloc] registered as @Factory
  getIt.registerFactory<HomeBloc>(() {
    return HomeBloc(getIt<HomeUseCases>(), getIt<GlobalEventDispatcher>());
  });

  /// [ProfileBloc] registered as @LazySingleton
  getIt.registerLazySingleton<ProfileBloc>(
    () => ProfileBloc(getIt<ProfileUseCases>(), getIt<GlobalEventDispatcher>()),
    dispose: (bloc) => bloc.close(),
  );

  /// [FavoriteMoviesBloc] registered as @LazySingleton
  getIt.registerLazySingleton<FavoriteMoviesBloc>(
    () => FavoriteMoviesBloc(
      getIt<ProfileUseCases>(),
      getIt<GlobalEventDispatcher>(),
    ),
    dispose: (bloc) => bloc.close(),
  );

  /// [ProfilePhotoUpdateBloc] registered as @Factory
  getIt.registerFactory<ProfilePhotoUpdateBloc>(() {
    return ProfilePhotoUpdateBloc(
      getIt<ProfileUseCases>(),
      getIt<GlobalEventDispatcher>(),
    );
  });

  /// [NavigationRedirectService] registered as @Singleton
  getIt.registerSingleton<NavigationRedirectService>(
    NavigationRedirectService(getIt<SettingsBloc>()),
  );

  /// [NavigationNotifier] registered as @Singleton
  getIt.registerSingleton<NavigationNotifier>(
    NavigationNotifier(getIt<SettingsBloc>()),
  );
}
