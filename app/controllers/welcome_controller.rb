class WelcomeController < ApplicationController

  def index
    @issue = Issue.latest
  end
  
end
