class Lasso < Formula
  desc "Harness-agnostic observational memory and linting CLI for coding agents"
  homepage "https://github.com/justEstif/lasso"
  url "https://registry.npmjs.org/@justestif/lasso/-/lasso-0.1.3.tgz"
  sha256 "d236c4e663519ad38316be850ec47a705127cd4d53d4d493e60a04fb1cbe040e"
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
