packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libkeyutils1
  /
when "precise"
  packages |= %w/
    libkeyutils1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
