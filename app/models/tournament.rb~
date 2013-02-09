class Tournament < ActiveRecord::Base

  #skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/xml' }

  attr_accessible :entry_reqs, :format, :links, :location, :name, :prizes, :sponsor, :start_date, :status
end
