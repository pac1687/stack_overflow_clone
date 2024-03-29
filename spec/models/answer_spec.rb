describe Answer do
  it { should validate_presence_of :text }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :question_id }

  it { should have_many :votes }
  it { should belong_to :question }
  it { should belong_to :user }
end
