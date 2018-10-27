class SecretsController < ApplicationController
  before_action :require_login

  def show
    @page = Page.find(params[:id])
  end

  private

  def require_login
    return head(:ok) unless session.include? :user_id
  end
end
