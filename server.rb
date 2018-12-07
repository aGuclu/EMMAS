require 'sinatra'
require './mail.rb'

get '/' do
  erb :home
end

get '/cookies' do
  erb :cookies
end

get '/cakes' do
  erb :cakes
end

get '/muffins' do
  erb :muffins
end

def email(recipient)
  Newsletter.welcome(recipient).deliver_now
end

post '/' do
  recipient = params['email']
  email(recipient)
  erb :home
end

$cookies = []
$muffins = []
$cakes = []

class Cookie
  attr_accessor :cost, :image, :description
  def initialize(cost, image, description)
    @cost = cost
    @image = image
    @description = description
    $cookies << self
  end
end

class Muffin
  attr_accessor :cost, :image, :description
  def initialize(cost, image, description)
    @cost = cost
    @image = image
    @description = description
    $muffins << self
  end
end

class Cake
  attr_accessor :cost, :image, :description
  def initialize(cost, image, description)
    @cost = cost
    @image = image
    @description = description
    $cakes << self
  end
end

Cookie.new('$3', 'images/cookie1.png', 'Sea Salt Chocolate Chip')
Cookie.new('$3', 'images/cookie2.png', 'Oatmeal Raisin')
Cookie.new('$3', 'images/cookie3.png', 'Honey Macaroon')

Muffin.new('$4', 'images/muffin1.png', 'Honey Corn Muffin')
Muffin.new('$4', 'images/muffin2.png', 'Blueberry Crumble')
Muffin.new('$4', 'images/muffin3.png', 'Espresso Crumble')

Cake.new('$5', 'images/cake1.png', 'New York Cheesecake')
Cake.new('$5', 'images/cake2.png', 'Egg Custard Cheesecake')
Cake.new('$5', 'images/cake3.png', 'Sea Salt Caramel Cheesecake')
