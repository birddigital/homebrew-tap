class Gofastapi < Formula
  desc "Generate production-ready Go clients from any REST/GraphQL API"
  homepage "https://github.com/birddigital/gofastapi-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/birddigital/gofastapi-cli/releases/download/v1.0.1/gofastapi-cli_1.0.1_Darwin_arm64.tar.gz"
      sha256 "de1ef021aa365c1efbed9472c8af30343018ddb49d714b8f0036775e2d75ed36"
    else
      url "https://github.com/birddigital/gofastapi-cli/releases/download/v1.0.1/gofastapi-cli_1.0.1_Darwin_x86_64.tar.gz"
      sha256 "335d07524bb3f476da0dc76f79cdd6378eea67a583301dd1d84f335e8da34c3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/birddigital/gofastapi-cli/releases/download/v1.0.1/gofastapi-cli_1.0.1_Linux_arm64.tar.gz"
      sha256 "ad558fe2d2bfd1c3f31fc1517399e54b5ff50b730a0fcc6d0cd45cf3b0d3085e"
    elsif Hardware::CPU.arm?
      url "https://github.com/birddigital/gofastapi-cli/releases/download/v1.0.1/gofastapi-cli_1.0.1_Linux_armv7.tar.gz"
      sha256 "3678797ffff360ac02282adee54995bcab0d8e5f73adbf35b5d6528905528d2f"
    else
      url "https://github.com/birddigital/gofastapi-cli/releases/download/v1.0.1/gofastapi-cli_1.0.1_Linux_x86_64.tar.gz"
      sha256 "da9857fb9f9cf13b08a9753670f2d3ee091d1f0ea6b910993420515f019f28dc"
    end
  end

  def install
    bin.install "gofastapi"
  end

  test do
    system "#{bin}/gofastapi", "--version"
    assert_match "gofastapi", shell_output("#{bin}/gofastapi --help")
  end
end
