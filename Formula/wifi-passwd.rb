class WifiPasswd < Formula
  desc "Show the password for the current Wi-Fi network on macOS"
  homepage "https://github.com/benjioh5/wifi-passwd"
  url "https://github.com/benjioh5/wifi-passwd/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "05d6cd76cd2445aea8e6ce240e99c1d65f767323389c645679aea312fb26637b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "wifi-passwd.sh" => "wifi-passwd"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/wifi-passwd --version").strip
    assert_match "Usage: wifi-passwd", shell_output("#{bin}/wifi-passwd --help")
  end
end
