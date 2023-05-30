class Api::V0::Customers::SubscriptionsController < ApplicationController
	def index
		customer = Customer.find(params[:customer_id])
		subscriptions = customer.subscriptions

		render json: SubscriptionsSerializer.new(subscriptions)
	end
end