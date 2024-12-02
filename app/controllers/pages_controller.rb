class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
    @bicycle = Bicycle.all.select {|bike| bike.user == @user}.first
    @bicycles = Bicycle.all.select {|bike| bike.user == @user}

    if @bicycle.nil?
      redirect_to bicycle_rack_path
      end
  end
end
