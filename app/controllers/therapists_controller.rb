class TherapistsController < ApplicationController
  def index
    @therapists = Therapist.all.page(params[:page])
  end
end
