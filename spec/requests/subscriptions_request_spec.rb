require 'rails_helper'

describe 'Subscriptions API', type: :request do
	describe 'GET /api/v0/customers/:customer_id/subscriptions' do
		let(:customer) { create(:customer) }
		let(:tea1) { create(:tea) }
		let(:tea2) { create(:tea) }

		let!(:subscription1) { create(:subscription, customer: customer, tea: tea1)}
		let!(:subscription2) { create(:subscription, customer: customer, tea: tea2)}

		it 'returns all subscriptions info for a given customer' do


			get "/api/v0/customers/#{customer.id}/subscriptions"

			expect(response.status).to eq 200
			subscriptions = JSON.parse(response.body)
			
      expect(subscriptions.size).to eq(2)
		end
	end
end