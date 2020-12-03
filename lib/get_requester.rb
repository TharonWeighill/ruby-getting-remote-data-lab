# Write your code here
class GetRequester
    require "net/http"
   
    URL = ""

    def initialze(url)
     url = URL
    end    


    def get_response_body
        uri = URI.parse(URL)
        response = NET::HTTP.get_response_body(uri)
        response.body
    end 


    def program_school
                programs = JSON.parse(self.get_programs)
          programs.collect do |program|
            program["agency"]  
          end
        end 


end 