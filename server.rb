require 'rubygems'
require 'bundler/setup'
Bundler.require :default

def twitch_url(channel_name, type=:watch)
  channel_name = 'dexbonus' if channel_name.nil? || channel_name.empty?
  type = :watch unless %i(watch sub).include? type
  if type == :watch
    "https://www.twitch.tv/#{channel_name}?no-mobile-redirect=true"
  elsif type == :sub
    "https://www.twitch.tv/products/#{channel_name}/ticket"
  end
end

get '/' do
  erb :index
end

post '/' do
  redirect twitch_url(params[:channel_name], params[:type].to_sym), 302
end

get '/watch' do
  redirect twitch_url('dexbonus', :watch), 302
end

get '/sub' do
  redirect twitch_url('dexbonus', :sub), 302
end

get '/watch/:channel_name' do
  redirect twitch_url(params[:channel_name], :watch), 302
end

get '/sub/:channel_name' do
  redirect twitch_url(params[:channel_name], :sub), 302
end

get '/*' do
  redirect twitch_url('dexbonus', :watch), 302
end
