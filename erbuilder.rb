class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/eujoy/erbuilder"
  url "https://github.com/eujoy/erbuilder/releases/download/v0.3.5/erbuilder-v0.3.5-darwin-amd64.tar.gz"
  version "v0.3.5"
  sha256 "e224b6902665248222d285d576859396979fd4b22d656b46d4789e53999d798b"

  if OS.linux?
    url "https://github.com/eujoy/erbuilder/releases/download/v0.3.5/erbuilder-v0.3.5-linux-amd64.tar.gz"
    sha256 "2ffd95119bd6aadcb239cad00da5c544637eab59b359420a234134d00b0dcb8a"
  end

  def install
    bin.install "erbuilder"
  end
end
