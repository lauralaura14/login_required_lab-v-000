class SecretsController < ApplicationController
  before_action :require_login

  def show

  end

  private

  def require_login
    return head(:200) unless session.include? :user_id
  end
end
