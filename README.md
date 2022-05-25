# Revup

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]

---

## Getting Started 🚀

This project contains 3 flavors:
## Use MakeFile / Derry to avoid writing your own scripts.

You can run all these scripts manually or could use  [MakeFile](https://github.com/SimpleBoilerplates/Flutter/blob/master/makefile) / [Derry](https://pub.dev/packages/derry) and maintain a file, where you can define all those scripts and run in a very convinient way. All the scripts for this project is defined here [derry scripts](https://github.com/SimpleBoilerplates/Flutter/blob/master/derry.yaml) and [makefile scripts](https://github.com/SimpleBoilerplates/Flutter/blob/master/makefile)

Example: 

run `make watch` or `derry watch` instead of

```sh
flutter pub run build_runner watch --delete-conflicting-outputs
``` 


or run `make build_apk_dev` or `derry build_apk_dev` instead of 

```sh
flutter build apk --flavor development -t lib/main_development.dart 
``` 
---


- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Revup works on iOS and Android._

---


## Use MakeFile / Derry to avoid writing your own scripts.

Instead typing mountful commands explicitly, you can run the them with alias defined in `make` or `derry`

Example: 

run `make watch` or `derry watch` instead of

```sh
flutter pub run build_runner watch --delete-conflicting-outputs
``` 


or run `make build_apk_dev` or `derry build_apk_dev` instead of 

```sh
flutter build apk --flavor development -t lib/main_development.dart 
``` 

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.


2. Then add a new key/value and description


3. Use the new string

```dart
import 'package:revup/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>vi</string>
	</array>

    ...
```


[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
