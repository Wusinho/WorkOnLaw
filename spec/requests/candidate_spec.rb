require 'rails_helper'

RSpec.describe Candidate, type: :request do
  
  describe "GET /candidates" do
    before { get '/candidates' }

    it "should return OK" do
      payload = JSON.parse(response.body)
      expect(payload).not_to be_empty
      expect(response).to have_http_status(200)
    end

    it "should return status code 200" do
      expect(response).to have_http_status(200)
    end
  end


end
