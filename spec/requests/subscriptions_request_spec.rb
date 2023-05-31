require 'rails_helper'

describe 'Subscriptions API', type: :request do
  describe 'GET /api/v0/customers/:customer_id/subscriptions' do
    let(:customer) { create(:customer) }
    let(:tea1) { create(:tea) }
    let(:tea2) { create(:tea) }

    let!(:subscription1) { create(:subscription, customer: customer, tea: tea1)}
    let!(:subscription2) { create(:subscription, customer: customer, tea: tea2)}

		describe 'happy path' do
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

		describe 'sad path' do
			it 'returns an error message with status 404' do
        non_existent_customer_id = 999

        get "/api/v0/customers/#{non_existent_customer_id}/subscriptions"

        expect(response).to have_http_status(404)
        error_message = JSON.parse(response.body)['error']
        expect(error_message).to be_present
			end
		end
  end

	describe 'POST /api/v0/customers/:customer_id/subscriptions' do
    let(:customer) { create(:customer) }
    let(:tea1) { create(:tea) }

		describe 'happy path' do
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

		describe 'sad path' do
			it 'returns an error message with status 400' do
				bad_params = {
					title: 'Invalid Subscription',
					price: 10.00,
					status: 'active',
					frequency: 'weekly',
					customer_id: customer.id,
					tea_id: nil # Intentionally passing nil to trigger validation error
				}
			
				post "/api/v0/customers/#{customer.id}/subscriptions", params: bad_params
			
				expect(response).to have_http_status(400)
				error_response = JSON.parse(response.body, symbolize_names: true)
				expect(error_response[:error]).to eq('Tea must exist')
			end
		end
	end

	describe 'PATCH /api/v0/customers/:customer_id/subscriptions/:subscription_id' do
    let(:customer) { create(:customer) }
    let(:tea1) { create(:tea) }
		let(:subscription) { create(:subscription, customer: customer, tea: tea1)}

		describe 'happy path' do
			it 'can cancel a subscription' do
				subscription_params = {
					status: 'cancelled',
				}
				patch "/api/v0/customers/#{customer.id}/subscriptions/#{subscription.id}", params: subscription_params

				expect(response).to have_http_status(201)
				subscription = JSON.parse(response.body, symbolize_names: true)
				data = subscription[:data]
				expect(data[:attributes][:status]).to eq(subscription_params[:status])
				
			end
		end

		describe 'sad path' do
			it 'returns an error message with status 400' do
				bad_params = {
					status: 'cancelled',
				}
			
				patch "/api/v0/customers/#{customer.id}/subscriptions/999", params: bad_params
			
				expect(response).to have_http_status(404)
				error_response = JSON.parse(response.body, symbolize_names: true)
				expect(error_response[:error]).to eq('Subscription not found')
			end
		end
	end
end
