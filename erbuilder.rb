class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/eujoy/erbuilder"
  url "https://github.com/eujoy/erbuilder/releases/download/v0.4.0/erbuilder-v0.4.0-darwin-amd64.tar.gz"
  version "v0.4.0"
  sha256 "9fe32040e5432b726b4e92b10331770405d9f9013efadfe5a5ee06782ef717b3"

  if OS.linux?
    url "https://github.com/eujoy/erbuilder/releases/download/v0.4.0/erbuilder-v0.4.0-linux-amd64.tar.gz"
    sha256 "febf992254d3b1c3049638735d8551c73cfa9904639b5bb5e25a273d853f21ee"
  end

  def install
    bin.install "erbuilder"
  end
end
