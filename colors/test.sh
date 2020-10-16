#!/bin/bash

ls archived-colors/autoload/lightline/colorscheme/ | xargs -n1 sh -c 'mkdir -p $(printf $0 | sed -e 's/.vim//g')/autoload/lightline/colorscheme/; mkdir -p $(printf $0 | sed -e 's/.vim//g')/colors/; mv ./archived-colors/autoload/lightline/colorscheme/$0 $(printf $0 | sed -e 's/.vim//g')/autoload/lightline/colorscheme/; mv $(printf $0 | sed -e 's/.vim//g')/$0 $(printf $0 | sed -e 's/.vim//g')/colors/'
