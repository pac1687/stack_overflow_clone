describe Question do
  it { should validate_presence_of :question }
  it { should validate_presence_of :content }
  it { should validate_presence_of :user_id }

  it { should have_many :answers }
  it { should belong_to :user }

end
