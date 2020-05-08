require "rubygems"
require "bundler"

Bundler.require

class FSDD
  def call env
    req = Rack::Request.new(env)

    [200, {'content-type' => 'text/plain'}, ['OK']]
  end
end

run FSDD.new
