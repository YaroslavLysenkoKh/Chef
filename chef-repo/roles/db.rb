{
  "name": "db",
  "description": "Role to install DataBase",
  "json_class": "Chef::Role",
  "default_attributes": {

  },
  "override_attributes": {

  },
  "chef_type": "role",
  "run_list": [
    "recipe[lamp::mariadb]"
  ],
  "env_run_lists": {

  }
}
