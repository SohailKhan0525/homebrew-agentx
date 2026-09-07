class Agentx < Formula
  desc "AI agent that builds production-ready websites from your terminal"
  homepage "https://github.com/SohailKhan0525/agentx-cli"
  url "https://registry.npmjs.org/@agent-qofeno/agentx-cli/-/agentx-cli-3.0.0.tgz"
  sha256 "ea955bbf4164665355df757305cfa53d5d4045077b5fb19553845febbd049c01"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/agentx", "--version"
  end
end
