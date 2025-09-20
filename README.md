# Case Study: Clean Architecture Project
# Clean Architecture Case Study Project

Clean structured Flutter showcase project, with **BLoC** State Management, **GetIt** Dependency Injection, **GoRouter** Navigation, JWT Authentication, Firebase Crashlytics & Analytics, localization, theming and modular UI with Lottie.

![](https://github.com/stdxpe/case_study_movies_project/blob/main/assets/readme/home_50fps_x425.gif)

<!-- ![](assets/readme/home_50fps_x425.gif) -->
<!-- MUST BE! : 50fps : x425 : Non Full HD (80%) -->

## Project Structure
```rust
❗ This project strictly follows CLEAN ARCHITECTURE dependency principles.
```

```bash
lib/
├── >core/
│   ├── constants/
│   ├── dependency_injection/
│   ├── errors/
│   ├── extensions/
│   ├── utilities/
│   │
│   └── >entities/
│   │   ├── failure/
│   │   ├── movie/
│   │   ├── paginated_movies/
│   │   ├── pagination/
│   │   ├── preferences/
│   │   ├── log_record/
│   │   ├── ui_side_effect/
│   │   └── user/
│   │
│   ├── models/
│   │   ├── http_response/
│   │   ├── response_error_dto/
│   │   └── response_info_dto/
│   │
│   ├── services/
│   │   ├── image_processing/
│   │   ├── locale/
│   │   ├── logger/
│   │   ├── navigation/
│   │   ├── network/
│   │   ├── secure_storage/
│   │   └── storage/
│   │
│   ├── settings/
│   │   ├── settings_bloc/
│   │   └── global_event_dispatcher/
│   │
│   ├── shared/
│   │   ├── components/
│   │   ├── overlays/
│   │   └── wrappers/
│   │
│   │
├── features/
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   │
│   │   ├── domain/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   │
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
│   │
│   ├── home/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   │
│   │   ├── domain/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   │
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
│   │
│   └── profile/
│       ├── data/
│       │   ├── datasources/
│       │   ├── models/
│       │   └── repositories/
│       │
│       ├── domain/
│       │   ├── entities/
│       │   │   ├── bonus_reward/
│       │   │   └── token_pack/
│       │   ├── repositories/
│       │   └── usecases/
│       │
│       └── presentation/
│           ├── bloc/
│           ├── pages/
│           └── widgets/
│
├── >assets/
│   ├── fonts/
│   ├── icons/
│   ├── images/
│   ├── lottie/
│   └── translations/
│
├── firebase_options.template.dart
├── .env.template.dart
│
├── splash_page.dart
├── root.dart
└── main.dart

```

<!-- ![](assets/readme/profile_50fps_x425.gif) -->
![](https://github.com/stdxpe/case_study_movies_project/blob/main/assets/readme/profile_50fps_x425.gif)


&nbsp;

> [!NOTE]
> Following section demonstrates the app flow for the Movie entity class, MovieService, MovieBloc, UI; including abstract class and dependency injection implementations.


This project is a starting point for a Flutter application.

&nbsp;

<!-- ![](assets/readme/validation_50fps_x425.gif) -->
![](https://github.com/stdxpe/case_study_movies_project/blob/main/assets/readme/validation_50fps_x425.gif)


```dart
/// Immutable and type-safe Core-level Domain Entity for [Movie].
/// API-specific transformations and parsing handled at feature-level [MovieModel].

@freezed
sealed class Movie with _$Movie {
  const factory Movie({
    required String id,
    required String title,
    required String description,
    required String posterUrl,
    required String director,
    required bool isFavorite,
    required List<String> images,
    String? actors,
    String? awards,
    String? country,
    String? genre,
    String? writer,
    String? language,
    String? metascore,
    String? rated,
    String? released,
    String? runtime,
    String? year,
    String? imdbId,
    String? imdbRating,
    String? imdbVotes,
    String? type,
    bool? comingSoon,
  }) = _Movie;
}
```


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
