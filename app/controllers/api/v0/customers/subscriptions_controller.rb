class Api::V0::Customers::SubscriptionsController < ApplicationController
	def index
		customer = Customer.find_by(id: params[:customer_id])

		if customer.nil?
			render json: { error: "Customer not found" }, status: :not_found
		else
			subscriptions = customer.subscriptions
			
			render json: SubscriptionsSerializer.new(subscriptions)
		end
	end

	def create
		sub = Subscription.new(subscription_params)
		if sub.save
			render json: SubscriptionsSerializer.new(sub), status: 201
		else 
			render json: { error: sub.errors.full_messages.to_sentence }, status: 400
		end
	end

	def update
		sub = Subscription.find_by(id: params[:id])
		if sub.nil?
			render json: { error: "Subscription not found" }, status: :not_found
		else
			if sub.update(subscription_params)
				render json: SubscriptionsSerializer.new(sub), status: 201
			else 
				render json: { error: sub.errors.full_messages.to_sentence }, status: 400
			end
		end
	end

	private

	def subscription_params
		params.permit(:title, :price, :status, :frequency, :customer_id, :tea_id)
	end
end