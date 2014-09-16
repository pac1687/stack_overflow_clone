describe Vote do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :answer_id }

  it { should belong_to :answer }
  it { should belong_to :user }

end
