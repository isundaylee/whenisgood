class MainController < ApplicationController
  def poll
    @st = Date.parse("2016-07-01")
    @ed = Date.parse("2016-08-31")

    @responses = Response.all.map(&:content).flatten
  end
end
