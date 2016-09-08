require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.create(:user, name: 'Amber', email: 'theamb@gmail.com', password: 'password') }

  describe 'Factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:user)).to be_valid
    end

  end

  it 'should create a user' do
    expect(subject.save).to eq true
  end

  it 'should have a name' do
    expect(subject.name).to eq 'Amber'
  end

  it 'has the same name as the mailbox name' do
    expect(subject.mailboxer_name).to eq subject.name
  end

  it 'should have an email' do
    subject.reload
    expect(User.first.email).to eq 'theamb@gmail.com'
  end

  it 'has the same email as the mailbox email' do
    expect(subject.mailboxer_email(subject.password)).to eq subject.email
  end


  describe 'Users table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
  end

  describe 'Validations' do

    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :email }
  end

  describe 'Mailboxer' do
    describe 'methods' do
      it { is_expected.to respond_to :mailboxer_name }
      it { is_expected.to respond_to :mailboxer_email }
      it { is_expected.to respond_to :mailbox }
    end

    describe 'functionality' do
      let!(:thomas) {FactoryGirl.create(:user, name: 'Thomas', email: 'thomas@random.com')}

      before do
        thomas.send_message(subject, 'Hello Amber', 'Yo!')
        @conversation = subject.mailbox.inbox.first
      end

      it 'adds message to inbox' do
        expect(subject.mailbox.inbox.count).to eq 1
      end

      it 'adds message to sent' do
        expect(thomas.mailbox.sentbox.count).to eq 1
      end

      it 'adds message to trash' do
        @conversation.move_to_trash(subject)
        expect(subject.mailbox.trash.count).to eq 1
      end

      it 'untrashes a message' do
        @conversation.move_to_trash(subject)
        @conversation.untrash(subject)
        expect(subject.mailbox.inbox.count).to eq 1
      end

      it 'replies to a message' do
        subject.reply_to_conversation(@conversation, "here's my reply")
        expect(thomas.mailbox.inbox.count).to eq 1
      end

    end

  end

end
