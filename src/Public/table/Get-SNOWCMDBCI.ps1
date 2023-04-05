function Get-SNOWCMDBCI {
    <#
    .SYNOPSIS
        Retrieves a cmdb_ci record from SNOW
    .DESCRIPTION
        Gets a record from the cmdb_ci table
    .NOTES
        Uses Get-SNOWObject as a template function.
    .OUTPUTS
        PSCustomObject. The full table record/s.
    .LINK
        https://github.com/insomniacc/PSSnow/blob/main/docs/functions/Get-SNOWCMDBCI.md
    .LINK
        https://docs.servicenow.com/csh?topicname=c_TableAPI.html&version=latest
    .EXAMPLE
        Get-SNOWCMDBCI -limit 1 -verbose
        Returns a single record from cmdb_ci
    #>   

    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $asset,
        [Parameter()]
        [string]
        $asset_tag,
        [Parameter()]
        [string]
        $assigned_to,
        [Parameter()]
        [alias('change_group')]
        [string]
        $assignment_group,
        [Parameter()]
        [string]
        $attestation_score,
        [Parameter()]
        [string]
        $attestation_status,
        [Parameter()]
        [boolean]
        $attested,
        [Parameter()]
        [string]
        $attested_by,
        [Parameter()]
        [string]
        $attributes,
        [Parameter()]
        [string]
        $business_unit,
        [Parameter()]
        [boolean]
        $can_print,
        [Parameter()]
        [string]
        $category,
        [Parameter()]
        [alias('approval_group')]
        [string]
        $change_control,
        [Parameter()]
        [string]
        $comments,
        [Parameter()]
        [string]
        $company,
        [Parameter()]
        [string]
        $correlation_id,
        [Parameter()]
        [string]
        $cost,
        [Parameter()]
        [alias('cost_currency')]
        [string]
        $cost_cc,
        [Parameter()]
        [string]
        $cost_center,
        [Parameter()]
        [string]
        $department,
        [Parameter()]
        [string]
        $discovery_source,
        [Parameter()]
        [string]
        $dns_domain,
        [Parameter()]
        [string]
        $due_in,
        [Parameter()]
        [string]
        $duplicate_of,
        [Parameter()]
        [string]
        $environment,
        [Parameter()]
        [string]
        $fault_count,
        [Parameter()]
        [alias('fully_qualified_domain_name')]
        [string]
        $fqdn,
        [Parameter()]
        [string]
        $gl_account,
        [Parameter()]
        [string]
        $install_status,
        [Parameter()]
        [string]
        $invoice_number,
        [Parameter()]
        [string]
        $ip_address,
        [Parameter()]
        [string]
        $justification,
        [Parameter()]
        [alias('lease_contract')]
        [string]
        $lease_id,
        [Parameter()]
        [string]
        $life_cycle_stage,
        [Parameter()]
        [string]
        $life_cycle_stage_status,
        [Parameter()]
        [string]
        $location,
        [Parameter()]
        [string]
        $mac_address,
        [Parameter()]
        [string]
        $maintenance_schedule,
        [Parameter()]
        [string]
        $managed_by,
        [Parameter()]
        [string]
        $managed_by_group,
        [Parameter()]
        [string]
        $manufacturer,
        [Parameter()]
        [string]
        $model_id,
        [Parameter()]
        [string]
        $model_number,
        [Parameter()]
        [boolean]
        $monitor,
        [Parameter()]
        [string]
        $name,
        [Parameter()]
        [string]
        $operational_status,
        [Parameter()]
        [string]
        $owned_by,
        [Parameter()]
        [string]
        $po_number,
        [Parameter()]
        [string]
        $schedule,
        [Parameter()]
        [string]
        $serial_number,
        [Parameter()]
        [alias('description')]
        [string]
        $short_description,
        [Parameter()]
        [boolean]
        $skip_sync,
        [Parameter()]
        [string]
        $subcategory,
        [Parameter()]
        [string]
        $supported_by,
        [Parameter()]
        [string]
        $support_group,
        [Parameter()]
        [alias('requires_verification')]
        [boolean]
        $unverified,
        [Parameter()]
        [string]
        $vendor
    )
    DynamicParam { Import-DefaultParamSet -TemplateFunction "Get-SNOWObject" }

    Begin {
        $table = "cmdb_ci"
    }
    Process {
        Invoke-SNOWTableREAD -table $table -Parameters $PSBoundParameters
    }
}

