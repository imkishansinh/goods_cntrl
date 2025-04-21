# GoodsCntrl

Important links

```shell
Compass app from google team
https://github.com/flutter/samples/tree/main/compass_app

Flutter command package
https://pub.dev/packages/flutter_command

Architecture case study
https://docs.flutter.dev/app-architecture/case-study

Generate tree view online
https://tree.nathanfriend.com/

Injection for multiple packages
https://medium.com/better-programming/simplify-dependency-injection-between-different-packages-in-dart-e771e38908a6
```

Generate app localization files

```shell
flutter gen-l10n
```

Usual directory structure

```shell
lib/
├── app/
│   └── router
├── core/
│   ├── http_client
│   └── logger
├── domain
├── features/
│   └── onboarding/
│       ├── di
│       ├── configuration
│       ├── analytics
│       ├── domain
│       ├── presentation/
│       │   ├── widgets
│       │   ├── view_model
│       │   ├── view
│       │   └── xxx_page.dart
│       └── navigation
├── utilities
├── main.dart
├── main_staging.dart
└── main_prod.dart
```
