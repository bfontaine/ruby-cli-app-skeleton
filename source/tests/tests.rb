#! /usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'coveralls'
Coveralls.wear!

require 'test/unit'
require 'simplecov'

test_dir = File.expand_path( File.dirname(__FILE__) )

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start { add_filter '/tests/' }

require '{LIB}'

for t in Dir.glob( File.join( test_dir,  '*_tests.rb' ) )
  require t
end

class {MODULE}Tests < Test::Unit::TestCase

  # == {MODULE}#version == #

  def test_{LIB}_version
    assert({MODULE}.version =~ /^\d+\.\d+\.\d+/)
  end

end


exit Test::Unit::AutoRunner.run
