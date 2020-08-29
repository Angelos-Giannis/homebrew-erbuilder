class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/eujoy/erbuilder"
  url "https://github.com/eujoy/erbuilder/releases/download/v0.6.0/erbuilder-v0.6.0-darwin-amd64.tar.gz"
  version "v0.6.0"
  sha256 "e118daa401633cea78d052be38740c92e11eb030244f49e18fb243c337635220"

  if OS.linux?
    url "https://github.com/eujoy/erbuilder/releases/download/v0.6.0/erbuilder-v0.6.0-linux-amd64.tar.gz"
    sha256 "6fc906c2cf9290b0841034d35f26dcdf13ae2d39a28b0ec911c49c78611469e8"
  end

  def install
    bin.install "erbuilder"
  end
end
