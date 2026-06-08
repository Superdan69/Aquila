require 'rack'

app = Rack::Builder.new do
  use Rack::Static, urls: ['/'], root: 'public', index: 'index.html'
  run lambda { |env| [200, { 'content-type' => 'text/html' }, ['Hello from MyNotebook']] }
end

run app
