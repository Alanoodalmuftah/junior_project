class Applicant < ActiveRecord::Base
  belongs_to :country

has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, :disability,  presence: true


NATIONALITY_LIST = ["Qatari", "nonQatari"]

GENDER_LIST = ["ذكر", "أنثى"]
GENDER_LISTComp = ["ذكر", "أنثى", "لا يهم"]

STATUS_LIST = ["أعزب", "متزوج", "مطلق"]

EDUCATION_LIST = ["لا يوجد","إبتدائي","إعدادي","ثانوي","جامعي"]

#def validate!
#	errors.add(:name, "cannot be nil") if name.nil?
#end

end
