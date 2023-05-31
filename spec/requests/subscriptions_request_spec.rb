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

      expect(response).to have_http_status(200)
      subscriptions = JSON.parse(response.body, symbolize_names: true)
      data = subscriptions[:data]

      expect(data).to be_an(Array)
      expect(data.size).to eq(2)

      subscription_attributes = data.first[:attributes]
      expect(subscription_attributes.keys).to contain_exactly(:title, :price, :status, :frequency, :customer_id, :tea_id, :tea)
    end
  end

	describe 'POST /api/v0/customers/:customer_id/subscriptions' do
    let(:customer) { create(:customer) }
    let(:tea1) { create(:tea) }

		it 'creates a new subscription for a given customer' do
			subscription_params = {
				title: 'Magical Tea Package',
				price: 10.00,
				status: 'active',
				frequency: 'weekly',
				customer_id: customer.id,
				tea_id: tea1.id
			}

			post "/api/v0/customers/#{customer.id}/subscriptions", params: subscription_params

			expect(response).to have_http_status(201)
			subscription = JSON.parse(response.body, symbolize_names: true)
			data = subscription[:data]

			expect(data[:attributes][:title]).to eq(subscription_params[:title])
			expect(data[:attributes][:price]).to eq(subscription_params[:price])
			expect(data[:attributes][:status]).to eq(subscription_params[:status])
			expect(data[:attributes][:frequency]).to eq(subscription_params[:frequency])
			expect(data[:attributes][:customer_id]).to eq(subscription_params[:customer_id])
			expect(data[:attributes][:tea_id]).to eq(subscription_params[:tea_id])
		end
	end
end
