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
end
