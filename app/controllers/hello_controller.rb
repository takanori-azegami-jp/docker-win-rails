class HelloController < ApplicationController
  def index
    @hello = "Hello World"
    render template: "hello/index"
  end
end