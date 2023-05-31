class Api::V0::Customers::SubscriptionsController < ApplicationController
	def index
		customer = Customer.find(params[:customer_id])
		subscriptions = customer.subscriptions

		render json: SubscriptionsSerializer.new(subscriptions)
	end

	def create
		sub = Subscription.new(subscription_params)
		if sub.save
			render json: SubscriptionsSerializer.new(sub), status: 201
		else 
			render json: { error: sub.errors.full_messages.to_sentence }, status: 400
		end
	end

	private

	def subscription_params
		params.permit(:title, :price, :status, :frequency, :customer_id, :tea_id)
	end
end