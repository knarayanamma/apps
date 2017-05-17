class Student < ApplicationRecord
	validates :sname, presence: true
	validates :sid, presence: true, uniqueness: true
	validates :mobile, presence: true, numericality: true
    before_save :encrypt_id
    before_validation :verify_id
    def encrypt_id
       self.id = Digest::MD5.hexdigest(id)
    end
	def self.authenticate(sname, id)
		if @student = Student.where(sname: :sname, id: Digest::MD5.hexdigest(id)).last
           @student
       else
       	nil
       end
	end
end
end
