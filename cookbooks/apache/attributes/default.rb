default["apache"]["sites"]["chef1"] = { "port" => 80, "domain" => "chef1.traine03.com" }
default["apache"]["sites"]["chef2"] = { "port" => 80, "domain" => "chef2.traine03.com" }
default["apache"]["sites"]["chef3"] = { "port" => 80, "domain" => "chef3.traine03.com" }

default["author"]["name"] = "Author from apache attributes"

case node["platform"]
when "amazon"
	default["apache"]["package"] = "httpd"
when "ubuntu"
        default["apache"]["package"] = "apache2"
end
