cask :v1 => 'popcorn-time' do
  version '0.3.7-2'
  sha256 'bcf82c8dba9864324fb75400cd5b7f8421196429dee7d9b4d61901e9947d2e7f'

  url "https://get.popcorntime.io/build/Popcorn-Time-#{version.gsub('-', '.')}-Mac.dmg", :user_agent => :fake
  appcast 'https://popcorntime.io/update.json',
    :sha256 => '3354d21ad453807bd663a20861dc3da36f3d2860929d30fc30ee15f87e8622af',
    :format => :unknown
  name 'Popcorn Time'
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'

  uninstall :quit => ['com.intel.nw', 'com.intel.nw.helper'],
    :delete => '/$TMPDIR$/Popcorn-Time'
  zap :delete => '~/Library/Application Support/Popcorn-Time'
end
