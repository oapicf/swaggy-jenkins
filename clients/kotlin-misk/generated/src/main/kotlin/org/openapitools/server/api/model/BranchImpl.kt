package org.openapitools.server.api.model

import org.openapitools.server.api.model.BranchImpllinks
import org.openapitools.server.api.model.BranchImplpermissions
import org.openapitools.server.api.model.PipelineRunImpl
import org.openapitools.server.api.model.StringParameterDefinition
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class BranchImpl(
    val propertyClass: kotlin.String? = null,
    val displayName: kotlin.String? = null,
    val estimatedDurationInMillis: kotlin.Int? = null,
    val fullDisplayName: kotlin.String? = null,
    val fullName: kotlin.String? = null,
    val name: kotlin.String? = null,
    val organization: kotlin.String? = null,
    val parameters: kotlin.collections.List<StringParameterDefinition>? = null,
    val permissions: BranchImplpermissions? = null,
    val weatherScore: kotlin.Int? = null,
    val pullRequest: kotlin.String? = null,
    val links: BranchImpllinks? = null,
    val latestRun: PipelineRunImpl? = null
)
