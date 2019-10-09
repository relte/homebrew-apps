class Integra < Formula
  desc "Integrations for automation"
  homepage "https://github.com/zelton/integra"
  url "https://github.com/zelton/integra/releases/download/v1.0.0/integra-v1.0.0-macos.tar.gz"
  sha256 "af4505d15ee3ae99d8f35c5aac3206012c6a2545cc3dfd73a4a19ef3fa2e05f5"

  def install
    files = Dir.glob("integra/*", File::FNM_DOTMATCH) - ["integra/.", "integra/.."]
    bin.install files
  end

  def post_install
    system "chmod", "600", "#{bin}/bitbucket/data.json"
  end
end
