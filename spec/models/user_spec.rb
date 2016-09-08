require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:user)).to be_valid
    end

  end
  subject { FactoryGirl.create(:user, name: 'Amber', email: 'theamb@gmail.com', password: 'password') }

  it 'should create a user' do
    expect(subject.save).to eq true
  end

  it 'should have a name' do
    expect(subject.name).to eq 'Amber'
  end

  it 'should have an email' do
    subject.reload
    expect(User.first.email).to eq 'theamb@gmail.com'
  end



  describe 'Users table' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :name}
    it { is_expected.to have_db_column :email}
    it { is_expected.to have_db_column :encrypted_password}
  end

  describe 'Validations' do

    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :email }
  end

  

end
