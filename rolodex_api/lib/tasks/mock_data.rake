namespace :mock_data do
    desc 'Generate mock user data'
    task :create_fake_people => :environment do
        json = JSON.parse(File.read(Rails.root.join('test', 'fixtures', 'files', 'mock_user_data.json')))
        
        json.each do |user_data|
            SitcomCharacter.create(
                name: user_data['name'],
                username: user_data['username'],
                email: user_data['email'],
                website: user_data['website'],
                phone: user_data['phonne'],
                address: {
                    street: user_data['street'],
                    suite: user_data['suite'],
                    city: user_data['city'],
                    zipcode: user_data['zipcode'],
                    geo: { 
                        lat: user_data['lat'],
                        long: user_data['long']
                    }
                },
                company: {
                    name: user_data['company'],
                    catch_phrase: user_data['catchphrase'],
                    bs: user_data['bs']
                }
            )
            puts("\n Sitcom character #{user_data['name']}  has been created")
        end
    end
  end