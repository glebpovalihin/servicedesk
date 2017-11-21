class ExemplarsController < ApplicationController
  def index
    @exemplars = Issue::Exemplar.all
  end
end