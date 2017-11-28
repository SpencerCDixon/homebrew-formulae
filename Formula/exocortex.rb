class Exocortex < Formula
  desc "A modern git based personal wiki"
  homepage "https://github.com/spencercdixon/exocortex"
  url "https://github.com/SpencerCDixon/exocortex/releases/download/v0.1.4/exocortex_0.1.4_macOS_64-bit.tar.gz"
  version "0.1.4"
  sha256 "96a8d7abdda00e2f06ff2b788ac4c8cf79ca3a63c94a054bae2032574cad54d0"

  def install
    bin.install "exo"
  end

  plist_options :startup => false

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>KeepAlive</key>
  <true/>
  <key>Label</key>
  <string>#{plist_name}</string>
  <key>ProgramArguments</key>
  <array>
    <string>#{opt_bin}/exo</string>
    <string>start</string>
    <string>$EXO_WIKI</string>
  </array>
  <key>RunAtLoad</key>
  <true/>
  <key>WorkingDirectory</key>
  <string>#{HOMEBREW_PREFIX}</string>
  <key>StandardErrorPath</key>
  <string>#{var}/log/exocortex.log</string>
</dict>
</plist>

    EOS
  end

  test do
    
  end
end
