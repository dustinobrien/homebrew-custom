cask :v1 => 'popcorn-time' do
  version '0.3.7-2'
  sha256 'bcf82c8dba9864324fb75400cd5b7f8421196429dee7d9b4d61901e9947d2e7f'

  url "https://get.popcorntime.io/build/Popcorn-Time-#{version.gsub('.', '-')}-Mac.dmg"
  name 'Popcorn Time'
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'
end
