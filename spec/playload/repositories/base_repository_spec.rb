# frozen_string_literal: true

RSpec.describe BaseRepository, type: :repository do
  let(:user_repo) { UserRepository.new }

  describe '#find_by' do
    let(:result) { user_repo.find_by(email: find_by_email) }
    let(:email)  { Faker::Internet.email }
    let!(:user)  { create(:user, email: email) }

    context 'when the email address matches the user' do
      let(:find_by_email) { email }

      it 'returns the user' do
        expect(result).to eq(user)
      end
    end

    context 'when the email address does not match the user' do
      let(:find_by_email) { Faker::Internet.email }

      it 'returns nil' do
        expect(result).to eq(nil)
      end
    end
  end
end
