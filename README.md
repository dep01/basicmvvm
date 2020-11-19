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

|-android<br/>
|<br/>
|-assets<br/>
|<br/>
|-build<br/>
|<br/>
|-ios<br/>
|<br/>
|-lib<br/>
|-----app<br/>
|-----|---locator.dart<br/>
|-----|---routes.dart<br/>
|-----|---third_party_app.dart<br/>
|<br/>
|-----model(this folder for data Model,you can generate from https://app.quicktype.io/)<br/>
|<br/>
|-----provider<br/>
|<br/>
|-----screen<br/>
|-----|---model(this folder for ViewModel)<br/>
|-----|---|---login_vm.dart<br/>
|     |<br/>
|     |---login.dart(this file is a view)<br/>
|<br/>
|-----utils(I use this like helper)<br/>
|<br/>
|-----widgets(this folder for reusable component)<br/>
|<br/>
|-----main.dart<br/>
|<br/>
|-pubspec.yaml<br/>
|<br/>
|-README.md
