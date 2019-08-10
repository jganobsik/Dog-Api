class DogsController < ApplicationController
    require 'faraday'
    def show
        url = 'https://dog.ceo/api/breeds/list/all'
        faraday = Faraday.new(url: url)
        response = faraday.get()
        @dogs = JSON.parse(response.body)
        @breed_param = params[:breed]

       @breed = @dogs["message"][@breed_param]

    end

end
