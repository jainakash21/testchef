#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

search(:users, "*:*").each do |data|
	user data["id"] do
		comment data["comment"]
		uid data["uid"]
		gid data["gid"]
		home data["home"]
		shell data["shell"]
		manage_home true
		password '$1$OEyynThx$sz2JsSFuHNmdnjXn6IGBD1'
	end
end

include_recipe "users::groups"

