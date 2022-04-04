class SearchController < ApplicationController
  def index
    @query = Contact.ransack(params[:q])
    @contacts = @query.result(distinct: true).reverse
    @contact = Contact.new(params[:id])
  end
end
