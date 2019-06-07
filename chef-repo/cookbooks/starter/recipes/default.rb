
execute "update-upgrade" do
  command "sudo yum update && sudo yum upgrade -y"
  action :run
end
