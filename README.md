# basicmvvm

I hope you have learn the basic of flutter before you're clone it.


## on pubspec.yaml you need to add packages

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


## structure folder

 android
|
 assets
|
 build
|
 ios
|
 lib
|_____app
|     |___locator.dart
|     |___routes.dart
|     |___third_party_app.dart
|
|_____model(this folder for data Model,you can generate from ## https://app.quicktype.io/)
|
|_____provider
|
|_____screen
|     |___model(this folder for ViewModel)
|     |     |___login_vm.dart
|     |
|     |___login.dart(this file is a view)
|
|_____utils(I use this like helper)
|
|_____widgets(this folder for reusable component)
|
|_____main.dart
|
 pubspec.yaml
|
 README.md