#
# Cookbook Name:: system_wide_rbenv
# Recipe:: default
#
# Copyright (C) 2013 AJ Christensen
#
# All rights reserved - Do Not Redistribute
#

gems = {
  "2.0.0-p0" => [
                 { "name" => "bundler" }
                ]
}

node.override['rbenv']['rubies'] = %w[2.0.0-p0]
node.override['rbenv']['global'] = "2.0.0-p0"
node.override['rbenv']['gems'] = gems

include_recipe "build-essential"
include_recipe "ubuntu"
include_recipe "ruby_build"
include_recipe "rbenv::system"
