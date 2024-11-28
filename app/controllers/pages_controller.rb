class PagesController < ApplicationController
  def home
    @user = current_user # ou como você estiver definindo o usuário atual
  end
end
