class ApplicationController < ActionController::Base
  # before_action :set_paper_trail_whodunnit
  before_action :set_query

  def set_query
    @query = Contact.ransack(params[:q])
  end

  # def user_for_paper_trail
  #   'Public user'
  # end
end
