class DiysController < ApplicationController
    require 'rest-client'

    def get_diys
        resp = RestClient::Request.execute(:method => :get,
        :url => "https://api.nookipedia.com/nh/recipes"
        :headers => ['X-API-KEY': ENV['NOOK_KEY'],
               'Accept-Version': '1.0.0' ]
        )
        render json: resp

    end
end
