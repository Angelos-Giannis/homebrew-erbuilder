HOMEBREW_ERBUILDER_VERSION="0.3.3"
class Erbuilder < Formula
  desc "CLI tool to generate an .er file based on profided go structures."
  homepage "https://github.com/Angelos-Giannis/erbuilder"
  url "https://github.com/Angelos-Giannis/erbuilder/releases/download/v#{HOMEBREW_ERBUILDER_VERSION}/erbuilder-v#{HOMEBREW_ERBUILDER_VERSION}-darwin-amd64.tar.gz"

  version HOMEBREW_ERBUILDER_VERSION
  sha256 "4bb5b6d5d4d7e7da1cfc2d48bce9945448bdfdc6caeaeda1ccbf7fa618c64b13"

  head "https://github.com/Angelos-Giannis/erbuilder.git", :tag => "#{HOMEBREW_ERBUILDER_VERSION}"

  if build.head?
    depends_on "go" => :build
  end

  def install
    if build.head?
      ENV["GOPATH"] = buildpath
      ENV.prepend_create_path "PATH", buildpath/"bin"
      dir = buildpath/"src/github.com/Angelos-Giannis/erbuilder"
      dir.install buildpath.children - [buildpath/".brew_home"]

      cd dir do
        system "go", "build . -o erbuilder"
        cp "erbuilder", buildpath
      end
    else
      mv "erbuilder-v#{HOMEBREW_ERBUILDER_VERSION}-darwin-amd64", "erbuilder"
    end
    bin.install "erbuilder"
    prefix.install_metafiles
  end

  test do
    assert_match 'erbuilder', shell_output("#{bin}/erbuilder --help", 1)
  end
end
