class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/eujoy/erbuilder"
  url "https://github.com/eujoy/erbuilder/releases/download/v0.3.4/erbuilder-v0.3.4-darwin-amd64.tar.gz"
  version "v0.3.4"
  sha256 "44c1cf30c7717e9f9cfcdef7e0e459ec1dc4e456df8b9f6fa911f8ab6fa11e42"

  if OS.linux?
    url "https://github.com/eujoy/erbuilder/releases/download/v0.3.4/erbuilder-v0.3.4-linux-amd64.tar.gz"
    sha256 "809385c85d8a9a4eda8e2eee9e583d0d71261ce1e3ec574acf6142d048b1767b"
  end

  def install
    bin.install "erbuilder"
  end
end
