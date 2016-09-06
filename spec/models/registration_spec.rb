require 'rails_helper'

RSpec.describe User, type: :model do

  # let(:user) { User.new name: "Amber", email: "theamb@gmail.com" }
  before do
    @user = User.new(name: "Amber", email: "theamb@gmail.com", password: "password")
  end

  it 'should have a name' do

  end

  it 'should have an email' do

  end

  it 'should verify passwords match' do

  end

  it 'should create a user' do
    expect(@user.save).to eq true
  end

end

describe 'Validations' do

  before do
    @user = User.create(name: "Amber", email: "theamb@gmail.com", password: "password")
  end

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
end
