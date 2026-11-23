# Owner Web

This is the Owner application for wholesale management.

Run locally:

```sh
flutter pub get
flutter run -d chrome --dart-define=API_BASE_URL=https://api.example.com/api/v1
flutter analyze
flutter test
```

Create a production web build:

```sh
flutter build web --release --base-href /owner_web/ --dart-define=API_BASE_URL=https://api.example.com/api/v1
```

The deployed GitHub Pages URL is
https://mynameismrsindia-cloud.github.io/owner_web/.
