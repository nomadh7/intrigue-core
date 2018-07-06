module Intrigue
module Ident
module Check
    class Jenkins < Intrigue::Ident::Check::Base

      def generate_checks(uri)
        [
          { # might need to be its own, but haven't seen it yet outside jenkins
            :name => "Hudson",
            :description => "Hudson",
            :version => nil,
            :type => :content_headers,
            :content => /x-hudson/i,
            :dynamic_version => lambda { |x| x["x-hudson"] },
            :paths => ["#{uri}"]
          },
          {
            :name => "Jenkins",
            :description => "Jenkins",
            :version => nil,
            :type => :content_headers,
            :content => /X-Jenkins-Session/i,
            :paths => ["#{uri}"]
          },
          {
            :name => "Jenkins",
            :description => "Jenkins",
            :version => nil,
            :type => :content_headers,
            :content => /x-jenkins/i,
            :dynamic_version => lambda { |x| x["x-jenkins"] },
            :paths => ["#{uri}"]
          }
        ]
      end

    end
  end
  end
  end