require 'rubygems'
require 'net/ssh'

# Works with the power of friendship
module Remote
  def self.ssh(data)
    text = data.text.to_s.split(/\benerssh/) * ''
    Net::SSH.start(HOST_SSH, USER_SSH, password: PASS_SSH) do |ssh|
      ssh.exec!(text.to_s)
    end
  end
end
