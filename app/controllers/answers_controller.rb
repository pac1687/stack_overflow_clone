class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer.save
      flash[:notice] = "Your answer is added."
      redirect_to question_path(@question)
    else
      redirect_to :back, notice: "Error, please try again."
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      flash[:notice] = "Your answer is updated."
      redirect_to answer_path(@answer)
    else
      redirect_to :back, notice: "Error, please try again."
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
  end

private
  def answer_params
    params.require(:answer).permit(:text).merge(question_id: @question.id, user_id: current_user.id)
  end

end
