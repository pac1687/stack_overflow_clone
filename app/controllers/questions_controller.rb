class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your question has been asked."
      redirect_to_question_path(@question)
    else
      redirect_to :back, notice: "Error, please try again."
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Your question is updated."
      redirect_to question_path(@question)
    else
      redirect_to :back, notice: "Error, please try again."
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
  end

private
  def question_params
    params.require(:question).permit(:question, :content, :chosen_answer_id).merge(user_id: current_user_id)
  end

end
