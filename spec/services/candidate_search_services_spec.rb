require 'rails_helper'

RSpec.describe CandidateSearchServices, 'call' do
  it 'creates a request to an API and brings all the data if status is 200' do
    result = CandidateSearchServices.search
    expect(result).not_to be_empty
  end

  it 'creates searches in the response for an email match and brings all the work experience' do
    result = CandidateSearchServices.find_candidate('nikola@tesla.org')
    expect(result).not_to be_empty
    expect(result.count).to eq(3)

  end

  it 'it brings the total number of experience in years that a person in the database has' do
    result = CandidateSearchServices.calculate_days('isaac@asimov.org')
    expect(result).to be >= 0
  end


end