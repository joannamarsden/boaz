class ClientsController < ApplicationController
	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)
		
		if @client.save
			redirect_to @client
		else
			render 'new'
		end
	end

	def show
		@client = Client.find(params[:id])
	end

	def edit
	end

	def destroy
	end

	private
	def client_params
		params.require(:client).permit(:first_name, :last_name, :email, :cell_phone, :home_phone, :mailing_add, :billing_add)
	end
end
