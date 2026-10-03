class Beemr < Formula
  desc "Peer-to-peer file sharing. No servers, no accounts, no setup"
  homepage "https://github.com/osmanahmadxai/beemr"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.3.0/beemr-macos-aarch64"
      sha256 "d80ecc078c476bfd1ff6c4096066ece29cff73fa3a183ccb9978bbf9c0f3ffde"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.3.0/beemr-macos-x86_64"
      sha256 "c36af03900e65d9264c66b79f9c2e0b660b2757593d61f266fd4672a5dd9fcba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.3.0/beemr-linux-aarch64"
      sha256 "c1777764c9d4499464352fa1364df500e8f554fee23734f0609bcf4d6b60c82b"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.3.0/beemr-linux-x86_64"
      sha256 "dc64bcb8236d33fecc717a12c11a0527e9c02a3ca7fe179a712c523d3fdcefb8"
    end
  end

  def install
    bin.install Dir["beemr-*"].first => "beemr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beemr --version")
  end
end
