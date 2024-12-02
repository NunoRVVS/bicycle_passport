class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
    @bicycle = Bicycle.all.select {|bike| bike.user == @user}.first
    @bicycles = Bicycle.all.select {|bike| bike.user == @user}
  end
end
