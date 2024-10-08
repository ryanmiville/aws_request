import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.1"

const metadata = Metadata(
  endpoint_prefix: "elasticmapreduce",
  service_id: "ElasticMapReduce",
  signing_name: "elasticmapreduce",
  global: option.None,
)

pub opaque type Client {
  Client(signer: Signer, endpoint: String)
}

pub fn new(
  access_key_id access_key_id: String,
  secret_access_key secret_access_key: String,
  region region: String,
) -> Client {
  let signer =
    aws4_request.signer(
      access_key_id:,
      secret_access_key:,
      region:,
      service: metadata.signing_name,
    )
  let #(signer, endpoint) = endpoint.resolve(signer, metadata)
  Client(signer:, endpoint:)
}

pub fn with_custom_endpoint(client: Client, custom_endpoint: String) -> Client {
  Client(..client, endpoint: custom_endpoint)
}

pub fn add_instance_fleet(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AddInstanceFleet"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn add_instance_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AddInstanceGroups"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn add_job_flow_steps(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AddJobFlowSteps"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn add_tags(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".AddTags"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn cancel_steps(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".CancelSteps"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_security_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateSecurityConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_studio(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateStudio"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_studio_session_mapping(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateStudioSessionMapping"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_security_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteSecurityConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_studio(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteStudio"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_studio_session_mapping(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteStudioSessionMapping"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_cluster(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeCluster"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_job_flows(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeJobFlows"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_notebook_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeNotebookExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_release_label(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeReleaseLabel"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_security_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeSecurityConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_step(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeStep"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_studio(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeStudio"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_auto_termination_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetAutoTerminationPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_block_public_access_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetBlockPublicAccessConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_cluster_session_credentials(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetClusterSessionCredentials"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_managed_scaling_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetManagedScalingPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_studio_session_mapping(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetStudioSessionMapping"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_bootstrap_actions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListBootstrapActions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_clusters(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListClusters"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_instance_fleets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListInstanceFleets"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_instance_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListInstanceGroups"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_instances(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListInstances"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_notebook_executions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListNotebookExecutions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_release_labels(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListReleaseLabels"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_security_configurations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListSecurityConfigurations"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_steps(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListSteps"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_studios(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListStudios"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_studio_session_mappings(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListStudioSessionMappings"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_supported_instance_types(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListSupportedInstanceTypes"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn modify_cluster(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyCluster"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn modify_instance_fleet(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyInstanceFleet"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn modify_instance_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyInstanceGroups"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_auto_scaling_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".PutAutoScalingPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_auto_termination_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".PutAutoTerminationPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_block_public_access_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".PutBlockPublicAccessConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_managed_scaling_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".PutManagedScalingPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn remove_auto_scaling_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RemoveAutoScalingPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn remove_auto_termination_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RemoveAutoTerminationPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn remove_managed_scaling_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RemoveManagedScalingPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn remove_tags(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".RemoveTags"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn run_job_flow(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".RunJobFlow"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_keep_job_flow_alive_when_no_steps(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetKeepJobFlowAliveWhenNoSteps"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_termination_protection(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetTerminationProtection"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_unhealthy_node_replacement(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetUnhealthyNodeReplacement"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_visible_to_all_users(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetVisibleToAllUsers"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn start_notebook_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".StartNotebookExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn stop_notebook_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".StopNotebookExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn terminate_job_flows(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".TerminateJobFlows"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_studio(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateStudio"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_studio_session_mapping(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateStudioSessionMapping"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}
