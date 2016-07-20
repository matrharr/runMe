class Workout
  def self.find
    # BW::HTTP.get('https://www.strava.com/api/v3/athlete', {:headers=>{'Authorization'=>'Bearer e972edbd35c1287cc9913c1562859dba1123f310'}}) do |response|
    #   p result = BW::JSON.parse(response.body.to_str)
    # end

    BW::Location.get do |result|
      BW::Location.stop
      BubbleWrap::HTTP.get("https://maps.googleapis.com/maps/api/place/search/json?location=#{result[:to].latitude},#{result[:to].longitude}&radius=500&sensor=false&key=AIzaSyArftlVcX0mk_npAdYv9uNhao9v5lHIhmE") do |response|
        names = BW::JSON.parse(response.body.to_str)["results"].map{|r| r["name"]}
        p places_list_controller.places_list = names
        p places_list_controller.reloadData
      end
    end
    # payload = {name: 'Matt' , type: 'Run', start_date_local: "2013-10-23T10:02:13Z", elapsed_time: 18373, access_token: 'e972edbd35c1287cc9913c1562859dba1123f310', scope: 'write'}
    # BW::HTTP.post('https://www.strava.com/api/v3/activities', {payload: payload, :headers=>{"Authorization"=>'Bearer e972edbd35c1287cc9913c1562859dba1123f310'}}) do |response|
    #   p result_data = BW::JSON.parse(response.body.to_str)
    # end
    # payload = {client_id: 12550, redirect_uri: 'matrharr.github.io', response_type: 'code', }
    # BW::HTTP.get('https://www.strava.com/oauth/authorize', {payload: payload}) do |response|

    # p result_data = BW::JSON.parse(response.body.to_str)
    # p result_data['results'][0]

    # block.call(nil)
  # end

  end
end