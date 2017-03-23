class Contact < ApplicationRecord
  belongs_to :user

  def friendly_created_at
    created_at.strftime("%B, %e, %Y")
  end

  def full_name
    first_name.to_s + " " + middle_name.to_s + " " + last_name.to_s 
  end

  def isd_code
    "+81" + (" ") + phone_number.to_s
  end



end
