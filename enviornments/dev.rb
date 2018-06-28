name "dev"
description "This is the Dev Env"
cookbook "apache", "= 0.1.5"
override_attributes{{ "author" => {"name" => "new author"}}}
