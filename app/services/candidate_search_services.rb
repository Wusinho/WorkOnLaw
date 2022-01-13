class CandidateSearchServices
  def self.search
    response = Faraday.get('https://api.workon.law/technical_challenge/get_lawyers')
    data = []
    case response.status
      when 200
        data = JSON.parse(response.body, symbolize_names: true)
      when 500..600
        data = []
      end
    data
  end

  def self.find_candidate(email)
    search[:candidates].find { |ele| return ele[:works] if ele[:email] == email}
  end
  
  def self.calculate_days(email)
    arr = find_candidate(email)
    return 'no subject in the database' unless arr
    total_dates = []
    sum = 0
    arr.each do |ele|
    
      start_date = Date.parse(ele[:start])
      end_date = ele[:end] ? Date.parse(ele[:end]) : Date.today

      (start_date..end_date).each do |date|
         unless total_dates.include?(date)
          total_dates << date
          sum += 1
         end
      end
    
    end
    (sum/365 + (sum%365/30)/12.to_f).round(1)
  end


end