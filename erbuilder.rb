class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/eujoy/erbuilder"
  url "https://github.com/eujoy/erbuilder/releases/download/v0.6.1/erbuilder-v0.6.1-darwin-amd64.tar.gz"
  version "v0.6.1"
  sha256 "4482caa2a7be0720136b4c879c6ec3931d06f1522a59e2ddaebd4d52cb38f65a"

  if OS.linux?
    url "https://github.com/eujoy/erbuilder/releases/download/v0.6.1/erbuilder-v0.6.1-linux-amd64.tar.gz"
    sha256 "05fdfa0aeb840febd13919eeb8806b60e81fa9e61e5c8ed2e5b40b4cb67ca5d7"
  end

  def install
    bin.install "erbuilder"
  end
end
