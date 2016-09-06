require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.new name: "Amber" email: "theamb@gmail.com" }

  it 'should create a user' do
    expect(user.save).to eq true
  end

end
