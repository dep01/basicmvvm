# basicmvvm

I hope you have learn the basic of flutter before you're clone it.


## on pubspec.yaml you need to add packages

dependencies:<br/>
&nbsp;   auto_route: ^0.5.0<br/>
__ get_it: ^4.0.2<br/>
__ injectable: ^0.4.0+1<br/>
__ stacked: ^1.7.6<br/>
__ stacked_services: ^0.5.4+4<br/>
<br/>
dev_dependencies:<br/>
  auto_route_generator: ^0.5.0<br/>
  build_runner: ^1.10.0<br/>
  injectable_generator: ^0.4.1


## structure folder

├───android
├───assets
├───└───images
├────────────ic_splash_1.png
├───build
├───ios
├───lib
├───├───main.dart
├───├───app
├───├──────locator.dart
├───├──────locator.iconfig.dart(will be generate)
├───├──────routes.dart
├───├──────routes.gr.dart(will be generate)
├───├──────thid_party_app.dart
├───├──models
├───├──providers
├───├──screen
├───├──├───home.dart
├───├──├───login.dart
├───├──├───splashscreen.dart
├───├──└───model
├───├─────├────home_vm.dart
├───├─────├────login_vm.dart
├───├─────└────splashscreen_vm.dart
├───├──utils
├───├──└───constant.dart
├───├──widgets
├───├──└───loading.dart
├───pubspec.lock
├───pubspec.yaml
└───README.md
