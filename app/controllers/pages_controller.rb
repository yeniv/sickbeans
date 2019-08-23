class PagesController < ApplicationController

  def index
    if params[:query].present?
      sql_query = ""
      @soybeans = Bean.where.not(sql_query, query: "%#{params[:query]}%")
    else
      @soybeans = Bean.all
    end
  end

end
