class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/Angelos-Giannis/erbuilder"
  url "https://github.com/Angelos-Giannis/erbuilder/releases/download/v0.3.3/erbuilder-v0.3.3-darwin-amd64.tar.gz"
  version "v0.3.3"
  sha256 "4bb5b6d5d4d7e7da1cfc2d48bce9945448bdfdc6caeaeda1ccbf7fa618c64b13"

  if OS.linux?
    url "https://github.com/Angelos-Giannis/erbuilder/releases/download/v0.3.3/erbuilder-v0.3.3-linux-amd64.tar.gz"
    sha256 "d8416a6a7f6fd83bad77221ef8f89416c404b7ce3674fc22b8e5e41c93a334e7"
  end

  def install
    bin.install "erbuilder"
  end
end
