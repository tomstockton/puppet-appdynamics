class appdynamics (
  $source_url,
  $version,
  $install_location,
  $controller_host,
  $controller_port,
  $controller_ssl_enabled,
  $account_name,
  $account_access_key,
  $service_ensure = running,
  $service_enable = false
) {

  include appdynamics::install
  include appdynamics::config
  include appdynamics::service

  Class['appdynamics::install'] ->
  Class['appdynamics::config'] ->
  Class['appdynamics::service']

}
