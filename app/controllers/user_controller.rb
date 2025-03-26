class UserController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
def new
  
end

def create
  User.create(email_address: params[:email_address], password: params[:password])
end

end
