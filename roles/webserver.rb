name "webserver"
description "Apache webserver role"
run_list "recipe[apache]", "recipe[users]"
