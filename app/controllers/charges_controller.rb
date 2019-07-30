class ChargesController < ApplicationController

    def new
    end

    def create
        # Amount in cents
        # set and check the amount on the server
        # validate client side amount
        
        @amount = params[:amount] * 100
      

        
        #API call to create a new customer
        
        customer = Stripe::Customer.create({
        #   email: params[:token][:email],
        #   source: params[:token],
            email: charge_params[:token][:email],
            source: charge_params[:token][:id]
        })
        #API call to charge a customer
        #Post call to this action from the stripe checkout form 
        charge = Stripe::Charge.create({
          customer: customer.id,
          amount: @amount,
          description: 'Thank you for shopping at Woof Pack!',
          currency: 'usd',
        })
      
        render json: charge
    #   rescue Stripe::CardError => e
    #     puts [:error]
    #     # flash[:error] = e.message
    #     # Change redirect for error handling 
    #     # redirect_to :root
    #     redirect_to new_charge_path
      end

      def show
      end

      private
      def charge_params
        params.require(:charge).permit!
      end
end
