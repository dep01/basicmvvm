# basicmvvm

I hope you have learn the basic of flutter before you're clone it.

## on pubspec.yaml you need to add packages
<pre>
dependencies:
   auto_route: ^0.5.0
   get_it: ^4.0.2
   injectable: ^0.4.0+1
   stacked: ^1.7.6
   stacked_services: ^0.5.4+4

dev_dependencies:
   auto_route_generator: ^0.5.0
   build_runner: ^1.10.0
   injectable_generator: ^0.4.1
</pre>

## Installation
Run it to install dependencies <pre>flutter packages get</pre>
Run it to generate routes.gr.dart and locator.iconfig.dart <pre>flutter packages pub run build_runner build --delete-conflicting-outputs</pre>
you just need edit routes.dart to add navigation and main.dart to define initial routes.</br>
<b>NOTE</b> you must run again after you edit routes.dart to rebuild routes.gr.dart and locator.iconfig.dart <pre>flutter packages pub run build_runner build --delete-conflicting-outputs</pre> 

## structure folder
<pre>

├───android
├───assets
│   └───images
│       └───ic_splash_1.png
├───build
├───ios
├───lib
│   ├───main.dart
│   ├───app
│   │   ├───locator.dart
│   │   ├───locator.iconfig.dart
│   │   ├───routes.dart
│   │   ├───routes.gr.dart
│   │   └───thid_party_app.dart
│   ├───models
│   ├───providers
│   ├───screen
│   │   ├───home.dart
│   │   ├───login.dart
│   │   ├───splashscreen.dart
│   │   └───model
│   │       ├───home_vm.dart
│   │       ├───login_vm.dart
│   │       └───splashscreen_vm.dart
│   ├───utils
│   │   └───constant.dart
│   └───widgets
│       └───loading.dart
├───test
│   └───widget_test.dart
├───pubspec.yaml
└───README.md

</pre>
