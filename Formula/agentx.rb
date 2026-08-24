class Agentx < Formula
  desc "AI agent that builds production-ready websites from your terminal"
  homepage "https://github.com/SohailKhan0525/agentx-cli"
  url "https://registry.npmjs.org/@agent-qofeno/agentx-cli/-/agentx-cli-2.0.9.tgz"
  sha256 "1e8b2df0c843d68ccf1a6d1eecb42db9344469cfc7e164d6999b8b806a47b56f"
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
