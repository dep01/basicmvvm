# basicmvvm

I hope you have learn the basic of flutter before you're clone it.


## on pubspec.yaml you need to add packages

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

 android<br/>
|<br/>
 assets<br/>
|<br/>
 build<br/>
|<br/>
 ios<br/>
|<br/>
 lib<br/>
|_____app<br/>
|     |___locator.dart<br/>
|     |___routes.dart<br/>
|     |___third_party_app.dart<br/>
|<br/>
|_____model(this folder for data Model,you can generate from ## https://app.quicktype.io/)<br/>
|<br/>
|_____provider<br/>
|<br/>
|_____screen<br/>
|     |___model(this folder for ViewModel)<br/>
|     |     |___login_vm.dart<br/>
|     |<br/>
|     |___login.dart(this file is a view)<br/>
|<br/>
|_____utils(I use this like helper)<br/>
|<br/>
|_____widgets(this folder for reusable component)<br/>
|<br/>
|_____main.dart<br/>
|<br/>
 pubspec.yaml<br/>
|<br/>
 README.md