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

    sum = 0

    arr.map do |ele|
      ele[:start] = Date.parse(ele[:start])
      if ele[:end].class == NilClass
        ele[:end] = Date.today
      else
        ele[:end] = Date.parse(ele[:end])
      end
    end
  
    last_big_date = ''
    arr.each_with_index do |ele, index|
  
      if index == 0
        sum = ele[:end] - ele[:start]
        last_big_date = ele[:end]
      elsif last_big_date > ele[:start] && last_big_date < ele[:end]
        sum += last_big_date - ele[:end]
      end
  
    end
    (sum/365).to_f.round(1)
  end


end