#! /usr/bin/env ruby

require 'fileutils'
F = FileUtils::Verbose

# placeholder values
values = {
  'GEM'    => 'the-gem',
  'REPO'   => 'theRepo',
  'MODULE' => 'TheModule',
  'BIN'    => ':GEM',
  'LIB'    => ':GEM',
  'CLI'    => ':GEM'
}

# avoid mistakes in the original repo
if File.exists?('.no-replacement')
  puts "We're in the original repo, aborting."
  puts "Remove `.no-replacement` to continue."
  exit 1
end

# override values using ARGV
ARGV.each do |arg|
  if arg =~ /^([_A-Z]+)=(.+)/
    values[$1] = $2
  end
end

# enable values factoring
values.each do |k,v|
  if v =~ /^:([_A-Z]+)$/
    values[k] = values[$1]
  end
end

def replace(s)
  s.gsub(/(?<!#)\{([_A-Z]+)\}/) do |placeholder|
    values[$1] or placeholder
  end
end

Dir['source/**/*', 'source/**/.*'].each do |name|
  name2 = name.sub(/^source\//, '')

  puts name2

  if File.directory?(name)
    F.mv name, replace(name2)
    next
  end

  ct = replace(File.read(name))

  name2 = replace(name2)

  File.open(name2, 'w') { |f| f.write ct }
end

F.rm_rf 'source'
