require 'sinatra/base'
require_relative 'app_controller'

class App < Sinatra::Base
  def render_template
    render('app_template.html')
  end
end
