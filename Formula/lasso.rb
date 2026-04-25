class Lasso < Formula
  desc "Harness-agnostic observational memory and linting CLI for coding agents"
  homepage "https://github.com/justEstif/lasso"
  url "https://registry.npmjs.org/@justestif/lasso/-/lasso-0.1.2.tgz"
  sha256 "cd42176b6996c138f0316536375aed92f35d67354c6481f4c5dd71b57e4f5364"
  license "MIT"

  depends_on "oven-sh/bun/bun"

  def install
    libexec.install Dir["*"]
    cd libexec do
      system "bun", "install", "--production"
    end
    bin.install_symlink libexec/"index.ts" => "lasso"
  end

  test do
    assert_match "Usage: lasso", shell_output("#{bin}/lasso --help")
  end
end
