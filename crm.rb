# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.
require 'sinatra'
require_relative 'contact'

get "/" do
  @crm_app_name = "Hira's CRM"
  @date = DateTime.now.strftime('%m/%d/%Y')
    erb :index
end

get "/contacts" do
  Contact.create('Hira', 'Kazmi', 'hirarukh@gmail.com', "Cat lady")
  Contact.create('Harry', 'Potter', 'boy-who-lived@hogwards.com', 'Expelliarmus')
  Contact.create('Kal', 'El', "superman@metropolis.com", 'smallville was terrible')
  erb :contacts
end
