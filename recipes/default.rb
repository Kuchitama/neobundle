#
# Cookbook Name:: neobundle
# Recipe:: default
#
# Copyright 2013, Kuchitama
#
# All rights reserved - Do Not Redistribute
#

BUNDLE_HOME = node["neobundle"]["vim_home"] + "/bundle"
USER = node["neobundle"]["user"]
GROUP = node["neobundle"]["group"]

directory BUNDLE_HOME do
	owner USER
	group GROUP
	mode 00744
	action :create
	recursive true
end

git BUNDLE_HOME << "/neobundle.vim" do
	user USER
	group GROUP
	repository "git://github.com/Shougo/neobundle.vim"
	reference "master"
	action :sync
end

bash "chown" do
	cwd BUNDLE_HOME
	code "chown -R " <<  USER << ":" << GROUP << " " << BUNDLE_HOME << "&&" << "chmod -R 744 " << BUNDLE_HOME
end

template ".vimrc" do
	path node["neobundle"]["vim_home"] << "/../.vimrc"
	source "vimrc.erb"
	owner USER
	group GROUP
	mode 00744
end
