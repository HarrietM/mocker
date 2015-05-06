class TemplatesController < ApplicationController

  def show
    render params[:template], layout: false
  end

end