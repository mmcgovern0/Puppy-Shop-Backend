Rails.configuration.stripe = {
    
    :publishable_key => Rails.application.credentials.stripe_public,
    :secret_key      => Rails.application.credentials.stripe_private
  }
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]