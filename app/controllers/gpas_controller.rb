class GpasController < ApplicationController
    def index
        @gpas = Gpa.all
        @cnt = Gpa.count
        @score = 0
        
        @gpas.each do |gpa|
            if gpa.evaluation == "S"
                @score += 4
            elsif gpa.evaluation == "A"
                @score += 3
            elsif gpa.evaluation == "B"
                @score += 2
            elsif gpa.evaluation == "C"
                @score += 1
            elsif gpa.evaluation == "D" || gpa.evaluation == "F" || gpa.evaluation == "Z"
                @score += 0
            end
        end
        @avarage = @score.to_f / @cnt.to_f
    end

    def new
        @gpa = Gpa.new
    end

    def create
        @gpa = Gpa.create(gpa_params)
        redirect_to gpas_path
    end

    def show
        @gpa = Gpa.find(params[:id])
        @gpa.destroy
        redirect_to gpas_path
    end

    private
    def gpa_params
        params.require(:gpa).permit(:classname, :evaluation)
    end
end
