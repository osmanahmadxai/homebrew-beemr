class Beemr < Formula
  desc "Peer-to-peer file sharing. No servers, no accounts, no setup"
  homepage "https://github.com/osmanahmadxai/beemr"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.4.0/beemr-macos-aarch64"
      sha256 "8845f1e2885a6764064a3f557c155a38e698ddaab33aa425381196cc9597a353"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.4.0/beemr-macos-x86_64"
      sha256 "c4f26f6058a8b54da75eb8b9f76ff88196fbdcbcbdaf266a6ede5e804485f5e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.4.0/beemr-linux-aarch64"
      sha256 "bf34f7d69206f39152c79a80e3bcdeca9a69b1a20a0cc9919e7eb062392f622b"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.4.0/beemr-linux-x86_64"
      sha256 "2b93dc363289561a284dc93239996dff8978a096bb07b50425a8828705a9551e"
    end
  end

  def install
    bin.install Dir["beemr-*"].first => "beemr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beemr --version")
  end
end
