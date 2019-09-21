class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: %i[dashboard]

  def index
  end
  
  def dashboard
  end
end
