require 'rbconfig'
class Terraform-Config-Inspect < Formula
  desc ""
  homepage "https://github.com/zfouts/terraform-config-inspect"
  version "2020.02.21-0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/zfouts/terraform-config-inspect/releases/download/v2020.02.21-0/terraform-config-inspect_2020.02.21-0_darwin_amd64.zip"
      sha256 "30262e52d3ab974bb4e4f4d2714fae71623f1f2716969ed9acded56be5f3b746"
    when /linux/
      url "https://github.com/zfouts/terraform-config-inspect/releases/download/v2020.02.21-0/terraform-config-inspect_2020.02.21-0_linux_amd64.tar.gz"
      sha256 "d944a9d5dc6c66326a986ce355816bcb492bf210b247b9db821268ed2b8ef313"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/zfouts/terraform-config-inspect/releases/download/v2020.02.21-0/terraform-config-inspect_2020.02.21-0_darwin_386.zip"
      sha256 "75fe49eed4f4ec1c8ee636ef58b12489a1bef0852b72906f1b329d20d233586f"
    when /linux/
      url "https://github.com/zfouts/terraform-config-inspect/releases/download/v2020.02.21-0/terraform-config-inspect_2020.02.21-0_linux_386.tar.gz"
      sha256 "34ffcac8c8f71853fd2faf09fd927b24c1aa258ee2144af48d8231b050c45d1c"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "terraform-config-inspect"
  end

  test do
    system "terraform-config-inspect"
  end

end
