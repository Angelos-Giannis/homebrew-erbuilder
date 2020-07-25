class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/eujoy/erbuilder"
  url "https://github.com/eujoy/erbuilder/releases/download/v0.5.0/erbuilder-v0.5.0-darwin-amd64.tar.gz"
  version "v0.5.0"
  sha256 "a07cb1353d395219fc2436ee40aa6a00559ebcd2a37779620fecc2e408f82696"

  if OS.linux?
    url "https://github.com/eujoy/erbuilder/releases/download/v0.5.0/erbuilder-v0.5.0-linux-amd64.tar.gz"
    sha256 "51e0de820ea46cd294c3f614ee9ce7a141d4543b19e8c185d675cf05535bbf02"
  end

  def install
    bin.install "erbuilder"
  end
end
