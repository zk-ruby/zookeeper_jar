module ZookeeperJar
  SLF4J_VERSION = '1.6.1' unless defined?(SLF4J_VERSION)

  def self.require_relative(*names)
    names.each do |name|
      require File.expand_path(File.join('..', name), __FILE__)
    end
  end
end

require 'zookeeper_jar/version'

ZookeeperJar.require_relative(*%W[
  log4j-1.2.15.jar
  slf4j-api-#{ZookeeperJar::SLF4J_VERSION}.jar
  slf4j-log4j12-#{ZookeeperJar::SLF4J_VERSION}.jar
  zookeeper-#{ZookeeperJar::VERSION}.jar
])

