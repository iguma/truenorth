class Individual < ActiveRecord::Base
  attr_accessible :current_first_name, :current_last_name

  validates :current_personal_title, :format => {:with => /^[a-zA-Z\.]{0,255}$/,allow_blank: true, message: "Only alphabets & dot symbol allowed."}
  validates :current_first_name, :format => {:with => /^[a-zA-Z\. ]{3,255}$/,allow_blank: false, message: "Only alphabets, space & dot symbol allowed."}
  validates :current_middle_name, :format => {:with => /^[a-zA-Z\. ]{0,255}$/,allow_blank: true, message: "Only alphabets, space & dot symbol allowed."}
  validates :current_last_name, :format => {:with => /^[a-zA-Z\. ]{1,255}$/,allow_blank: false, message: "Only alphabets, space & dot symbol allowed."}
  validates :current_suffix, :format => {:with => /^[a-zA-Z\. ]{0,255}$/,allow_blank: true, message: "Only alphabets, space & dot symbol allowed."}
  validates :current_nickname, :format => {:with => /^[a-zA-Z\ ]{0,255}$/,allow_blank: true, message: "Only alphabets, space allowed."}
  validates :current_passport_number, :format => {:with => /\A[0-9]{8,8}+\z/,allow_blank: true, message: "Only numbers allowed.Password length should be 8 character length"}
  validates :total_years_work_experience, :format => {:with => /\A[0-9]{0,2}+\z/,allow_blank: true, message: "Invalid work experience. Only numbers allowed."}
  validates :marital_status, :format => {:with => /^[a-zA-Z]{0,1}$/,allow_blank: true, message: "Only alphabets allowed. Maximum length should be 1"}
  validates :social_security_number, :format => {:with => /^\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b/,allow_blank: true, message: "Invalid SSS number. Only numbers & - allowed."}

end
