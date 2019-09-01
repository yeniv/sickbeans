class PagesController < ApplicationController
  def index
    @soybeans = Bean.all
    @collection = Bean.form_collection
    search = params['search']

    if search.present?
      @soybeans = Bean.where.not(Bean.params_to_hash(search))
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end
end
