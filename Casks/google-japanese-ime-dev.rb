cask :v1 => 'google-japanese-ime-dev' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/japanese-ime/dev/GoogleJapaneseInput.dmg'
  homepage 'https://www.google.co.jp/ime/'
  license :unknown

  pkg 'GoogleJapaneseInput.pkg'
  uninstall :pkgutil => 'com.google.pkg.GoogleJapaneseInput',
            :launchctl => [
                           'com.google.inputmethod.Japanese.Converter',
                           'com.google.inputmethod.Japanese.Renderer'
                          ]
end
