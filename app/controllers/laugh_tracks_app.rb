class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    @specials = @comedians.each_with_object({}) do |comedian, obj|
      obj[comedian.id] = Comedian.find_special(comedian.id)
    end
    erb :comedians
  end
end
