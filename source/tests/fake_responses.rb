#! /usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'fakeweb'

FakeWeb.allow_net_connect = %r[^https?://coveralls\.io]

FakeWeb.register_uri(
  :get,
  "<url here>"
  :body => "<body here>"
)
