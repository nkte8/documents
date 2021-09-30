external_url "http://gitlab.neko.lab"
registry_external_url 'http://registry.neko.lab:5005'
gitlab_rails['registry_enabled'] = true
gitlab_rails['registry_host'] = "registry.neko.lab"
gitlab_rails['registry_port'] = "5005"
gitlab_rails['initial_shared_runners_registration_token'] = 'gitlabtoken'
gitlab_rails['initial_root_password'] = 'gitlabroot'
grafana['enable'] = false
prometheus['enable'] = false
gitlab_rails['backup_path'] = '/bak/backup/gitlab'
