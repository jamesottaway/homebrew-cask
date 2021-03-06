cask 'kotlin-native' do
  version '1.3.72'
  sha256 'c5742382cf42def4b59b583f9b04b06928bbebf1aa090ea3ea03bfea5570dcc2'

  # github.com/JetBrains/kotlin/ was verified as official when first introduced to the cask
  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{version}.tar.gz"
  appcast 'https://github.com/JetBrains/kotlin-native/releases.atom'
  name 'Kotlin Native'
  homepage 'https://kotlinlang.org/docs/reference/native-overview.html'

  conflicts_with formula: 'kotlin'

  binary "kotlin-native-macos-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{version}/bin/klib"
  binary "kotlin-native-macos-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{version}/bin/run_konan"

  caveats do
    depends_on_java '6+'
  end
end
