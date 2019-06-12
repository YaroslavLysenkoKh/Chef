{
  "name": "www",
  "description": "Role to install WordPress (apache, php)",
  "json_class": "Chef::Role",
  "default_attributes": {

  },
  "override_attributes": {

  },
  "chef_type": "role",
  "run_list": [
    "recipe[lamp::apache]",
    "recipe[yum-epel::default]",
    "recipe[lamp::php]",
    "recipe[lamp::wordpress]"
  ],
  "env_run_lists": {

  }
}
