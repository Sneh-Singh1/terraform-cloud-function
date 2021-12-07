
#    ****google_cloudfunctions_function****

resource "google_cloudfunctions_function" "cloudfunction" {

  name                = var.name
  project             = var.project
  runtime             = var.runtime
  description         = var.description
  available_memory_mb = var.available_memory_mb
  timeout             = var.timeout
  entry_point         = var.entry_point

  trigger_http                = var.trigger_http
  ingress_settings            = var.ingress_setting
  service_account_email       = var.service_account_email
  environment_variables       = var.environment_variables
  build_environment_variables = var.build_environment_variables
  vpc_connector               = var.connector
  max_instances = var.max_instances
  source_repository{
    url = var.url
  }


}



# ****google_cloudfunctions_function_iam_binding****

resource "google_cloudfunctions_function_iam_binding" "iam_binding" {

  project        = var.project
  role           = var.role
  members        = var.members
  cloud_function = google_cloudfunctions_function.cloudfunction.id

}


# ****google_cloudfunctions_function_iam_member****

resource "google_cloudfunctions_function_iam_binding" "iam_binding_member" {

  project        = var.project
  role           = var.role
  members        = var.members
  cloud_function = google_cloudfunctions_function.cloudfunction.id

}


