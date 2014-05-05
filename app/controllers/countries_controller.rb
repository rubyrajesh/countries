class CountriesController < ApplicationController
  before_action :set_country, only: [:show]

  def index
    @countries = Countries.list
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      id = params[:id]
      @country = Countries.list[id.to_i - 1]
    end
end
