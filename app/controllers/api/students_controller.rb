class Api::StudentsController < ApplicationController
		def index
		@students=Student.all
		respond_to do |format|
			format.json {render json:@students}
		end
	end
	def update 
		@student=Student.find(params[:id])
		respond_to do |format|
			if@student.update(student_params)
				format.json{render json:@student}
			else
				format.json{render json:@student.error}
			end
		end
	end
	def destroy 
     @student = Student.find params[:id]
     @student.destroy
    end
	def create
		@student=Student.new(student_params)
		respond_to  do |format|
			if @student.save
				format.json{render json:@student}
			else
				format.json{rendor json:@student.error}
			end
		end
	end
	  private
	 def student_params
		params.require(:student).permit!
	 end
end