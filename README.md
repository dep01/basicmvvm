# basicmvvm

I hope you have learn the basic of flutter before you're clone it.


## on pubspec.yaml you need to add packages
<pre>
dependencies:<br/>
  auto_route: ^0.5.0<br/>
  get_it: ^4.0.2<br/>
  injectable: ^0.4.0+1<br/>
  stacked: ^1.7.6<br/>
  stacked_services: ^0.5.4+4<br/>
<br/>
dev_dependencies:<br/>
  auto_route_generator: ^0.5.0<br/>
  build_runner: ^1.10.0<br/>
  injectable_generator: ^0.4.1


## structure folder
├───android
├───assets
│   └───images
│           ic_splash_1.png
├───build
├───ios
├───lib
│   │   main.dart
│   ├───app
│   │       locator.dart
│   │       locator.iconfig.dart
│   │       routes.dart
│   │       routes.gr.dart
│   │       thid_party_app.dart
│   ├───models
│   ├───providers
│   ├───screen
│   │   │   home.dart
│   │   │   login.dart
│   │   │   splashscreen.dart
│   │   └───model
│   │           home_vm.dart
│   │           login_vm.dart
│   │           splashscreen_vm.dart
│   ├───utils
│   │       constant.dart
│   └───widgets
│           loading.dart
├───test
│       widget_test.dart
├───pubspec.yaml
└───README.md


</pre>
