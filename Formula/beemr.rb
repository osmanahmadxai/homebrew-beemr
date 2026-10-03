class Beemr < Formula
  desc "Peer-to-peer file and message sharing. No servers, no accounts, no setup"
  homepage "https://github.com/osmanahmadxai/beemr"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.2/beemr-macos-aarch64"
      sha256 "73317e0cd9a0a053ef3d0fe38f0e62acbe8c52b92ed369cb260049d8fd90335d"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.2/beemr-macos-x86_64"
      sha256 "cda598bcf6b9e610bdb150a9e115d75de3e94b0e15a5176360cf009dd8a576c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.2/beemr-linux-aarch64"
      sha256 "f21ee09c2eaabb91842525ad48cc7b619babed1f9080ac1c46f5204dea79f59f"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.2/beemr-linux-x86_64"
      sha256 "e1a8eb9b8e37fd6604fa3cd80d2c4a5810292ab15080f52e72df6aea8b0004d8"
    end
  end

  def install
    bin.install Dir["beemr-*"].first => "beemr"
  end

  service do
    run [opt_bin/"beemr", "daemon", "run"]
    keep_alive true
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beemr --version")
  end
end
