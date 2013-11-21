class ChatTokensController < ApplicationController
  before_filter :authenticate_user!

  def show
    if current_user.chat_token.nil?
      current_user.update_token
    end
  end

  def create
    current_user.update_token
    redirect_to show_chat_token_path
  end
end