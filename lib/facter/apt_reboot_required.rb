# frozen_string_literal: true

# apt_reboot_required.rb
Facter.add(:apt_reboot_required) do
  confine 'os.family': 'Debian'
  setcode do
    File.file?('/var/run/reboot-required')
  end
end
