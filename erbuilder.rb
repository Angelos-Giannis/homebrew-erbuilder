class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/eujoy/erbuilder"
  url "https://github.com/eujoy/erbuilder/releases/download/v0.6.0/erbuilder-v0.6.0-darwin-amd64.tar.gz"
  version "v0.6.0"
  sha256 "aa6ca108012d4b5fb9d54ca60713056c8212d84a88d6a8f7777977a7500bd985"

  if OS.linux?
    url "https://github.com/eujoy/erbuilder/releases/download/v0.6.0/erbuilder-v0.6.0-linux-amd64.tar.gz"
    sha256 "cbac399cb0e0215bdb0e6960d15837d7ded6f1b2e0e33c3037476bcb34f32704"
  end

  def install
    bin.install "erbuilder"
  end
end
