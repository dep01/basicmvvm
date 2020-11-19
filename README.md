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

#!/bin/bash

#File: tree-md

tree=$(tree -tf --noreport -I '*~' --charset ascii $1 |
       sed -e 's/| \+/  /g' -e 's/[|`]-\+/ */g' -e 's:\(* \)\(\(.*/\)\([^/]\+\)\):\1[\4](\2):g')

printf "# Project tree\n\n${tree}"
