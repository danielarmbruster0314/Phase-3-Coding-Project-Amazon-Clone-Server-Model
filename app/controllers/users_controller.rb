class UsersController < ApplicationController
  
  get '/user_name' do
    user = User.find(params[:id])
    user.to_json
  end

  post '/user_name' do
    user = User.create(
      first_name:(params[:first_name]),
      last_name:(params[:last_name]),
      user_name:(params[:user_name]),
      password:(params[:password])
    )
    user.to_json
  end

  #edit password
  patch '/user_name/:id' do
    user = User.find(params[:id])
    user.update(
      password:(params[:password])
    )
  end

  #edit user_name
  patch '/user_name/:user_name' do
    user = User.find(params[:user_name])
    user.update(
      user_name:(params[:user_name])
    )
    user.to_json
  end

  # edit user's name
  patch '/user_name/:first_name' do
    user = User.find(params[:id])
    user.update(
        first_name:(params[:first_name]),
        last_name:(params[:last_name])
    )
    user.to_json
  end

  delete '/:user_name' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end