class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    # Getting news data:
    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @news = JSON.parse(@response)
    # Getting prices data:
    @price_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,SHIB,SOL,BNB,MBOX,LUNA,BUSD,AVAX,XRP,SAND,TRX,DOT,USDT,ADA,LTC&tsyms=USD'
    @price_uri = URI(@price_url)
    @price_response = Net::HTTP.get(@price_uri)
    @prices = JSON.parse(@price_response)
  end

  def prices

  end
end
