class PagesController < ApplicationController

  def index
    @data_structure = Bean.data_structure

    @classifications = @data_structure[0][:data]

    @soybeans = Bean.all

    search = params['search']

    if search.present?
      selected_classifications = search['classifications']

      @soybeans = Bean.where.not(
        classification: selected_classifications,

        )
    end

  end

end
