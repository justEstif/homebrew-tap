class Pk < Formula
  desc "Project knowledge — structured intake, search, and recall"
  homepage "https://github.com/justEstif/pk"
  url "https://registry.npmjs.org/@justestif/pk/-/pk-0.9.0.tgz"
  sha256 "edd8ec2726fe1e28f04d0dd4c83074daa876ecf71b7ad4e7ed63d1a98ae78560"
  license "MIT"

  depends_on "oven-sh/bun/bun"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"dist/index.js" => "pk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pk --version")
  end
end
