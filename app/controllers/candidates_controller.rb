class CandidatesController < ApplicationController
  def index
    years = CandidateSearchServices.calculate_days(candidate_params[:email])

    render json: {
      email: candidate_params[:email],
      work_experience_years: years
    }

  end

  private

  def candidate_params
    params.permit(:email)
  end
end
