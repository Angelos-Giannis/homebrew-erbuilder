class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/Angelos-Giannis/erbuilder"
  url "https://github.com/Angelos-Giannis/erbuilder/releases/download/v0.3.3/erbuilder-v0.3.3-darwin-amd64.tar.gz"
  version "v0.3.3"
  sha256 "5cc5e2b1c7f03e8759206e1dd36abe90bc4ef912f43d9e140ec5d26115c44888"

  if OS.linux?
    url "https://github.com/Angelos-Giannis/erbuilder/releases/download/v0.3.3/erbuilder-v0.3.3-linux-amd64.tar.gz"
    sha256 "6621e07eca2c22233209b98f97b6da3b10e22ec7b0380bf4303654f32d3b587b"
  end

  def install
    bin.install "erbuilder"
  end
end
