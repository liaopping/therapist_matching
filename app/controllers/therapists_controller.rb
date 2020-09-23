class TherapistsController < ApplicationController
  def index
    @therapist = Therapist.all
  end
end
