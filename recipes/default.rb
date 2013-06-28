#
# Cookbook Name:: neobundle
# Recipe:: default
#
# Copyright 2013, Kuchitama
#
# All rights reserved - Do Not Redistribute
#

dirctory "~/.vim/bundle" do
  mode 00744
	action : create
end

git "~/.vim/bundle" do
  repository "git://github.com/Shougo/neobundle.vim"
  reference "master"
  action :sync
end


