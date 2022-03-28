class SearchController < ApplicationController
  def index
    @query = Contact.ransack(params[:q])
    @contacts = @query.result(distinct: true)
  end
end
