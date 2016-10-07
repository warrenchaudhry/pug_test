require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user, first_name: 'Juan', last_name: 'Dela Cruz') }
  subject { user }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:country) }
  it { should respond_to(:language) }
  it { should respond_to(:is_paying) }
  it { should respond_to(:is_admin) }
  it { should respond_to(:age) }

  describe "Validations" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it "is not valid with wrong email address format" do
      subject.email = "sampleadas"
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a first_name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a last_name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a country" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid with age as string" do
      subject.age = 'ab'
      expect(subject).to_not be_valid
    end

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end

  it "name should be Juan Dela Cruz" do
    expect(subject.name).to eq "Juan Dela Cruz"
  end


end
