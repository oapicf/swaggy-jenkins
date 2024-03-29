/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// Hudson
    /// </summary>
    [DataContract(Name = "Hudson")]
    public partial class Hudson : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Hudson" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="assignedLabels">assignedLabels.</param>
        /// <param name="mode">mode.</param>
        /// <param name="nodeDescription">nodeDescription.</param>
        /// <param name="nodeName">nodeName.</param>
        /// <param name="numExecutors">numExecutors.</param>
        /// <param name="description">description.</param>
        /// <param name="jobs">jobs.</param>
        /// <param name="primaryView">primaryView.</param>
        /// <param name="quietingDown">quietingDown.</param>
        /// <param name="slaveAgentPort">slaveAgentPort.</param>
        /// <param name="unlabeledLoad">unlabeledLoad.</param>
        /// <param name="useCrumbs">useCrumbs.</param>
        /// <param name="useSecurity">useSecurity.</param>
        /// <param name="views">views.</param>
        public Hudson(string varClass = default(string), List<HudsonassignedLabels> assignedLabels = default(List<HudsonassignedLabels>), string mode = default(string), string nodeDescription = default(string), string nodeName = default(string), int numExecutors = default(int), string description = default(string), List<FreeStyleProject> jobs = default(List<FreeStyleProject>), AllView primaryView = default(AllView), bool quietingDown = default(bool), int slaveAgentPort = default(int), UnlabeledLoadStatistics unlabeledLoad = default(UnlabeledLoadStatistics), bool useCrumbs = default(bool), bool useSecurity = default(bool), List<AllView> views = default(List<AllView>))
        {
            this.VarClass = varClass;
            this.AssignedLabels = assignedLabels;
            this.Mode = mode;
            this.NodeDescription = nodeDescription;
            this.NodeName = nodeName;
            this.NumExecutors = numExecutors;
            this.Description = description;
            this.Jobs = jobs;
            this.PrimaryView = primaryView;
            this.QuietingDown = quietingDown;
            this.SlaveAgentPort = slaveAgentPort;
            this.UnlabeledLoad = unlabeledLoad;
            this.UseCrumbs = useCrumbs;
            this.UseSecurity = useSecurity;
            this.Views = views;
        }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name = "_class", EmitDefaultValue = false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Gets or Sets AssignedLabels
        /// </summary>
        [DataMember(Name = "assignedLabels", EmitDefaultValue = false)]
        public List<HudsonassignedLabels> AssignedLabels { get; set; }

        /// <summary>
        /// Gets or Sets Mode
        /// </summary>
        [DataMember(Name = "mode", EmitDefaultValue = false)]
        public string Mode { get; set; }

        /// <summary>
        /// Gets or Sets NodeDescription
        /// </summary>
        [DataMember(Name = "nodeDescription", EmitDefaultValue = false)]
        public string NodeDescription { get; set; }

        /// <summary>
        /// Gets or Sets NodeName
        /// </summary>
        [DataMember(Name = "nodeName", EmitDefaultValue = false)]
        public string NodeName { get; set; }

        /// <summary>
        /// Gets or Sets NumExecutors
        /// </summary>
        [DataMember(Name = "numExecutors", EmitDefaultValue = false)]
        public int NumExecutors { get; set; }

        /// <summary>
        /// Gets or Sets Description
        /// </summary>
        [DataMember(Name = "description", EmitDefaultValue = false)]
        public string Description { get; set; }

        /// <summary>
        /// Gets or Sets Jobs
        /// </summary>
        [DataMember(Name = "jobs", EmitDefaultValue = false)]
        public List<FreeStyleProject> Jobs { get; set; }

        /// <summary>
        /// Gets or Sets PrimaryView
        /// </summary>
        [DataMember(Name = "primaryView", EmitDefaultValue = false)]
        public AllView PrimaryView { get; set; }

        /// <summary>
        /// Gets or Sets QuietingDown
        /// </summary>
        [DataMember(Name = "quietingDown", EmitDefaultValue = true)]
        public bool QuietingDown { get; set; }

        /// <summary>
        /// Gets or Sets SlaveAgentPort
        /// </summary>
        [DataMember(Name = "slaveAgentPort", EmitDefaultValue = false)]
        public int SlaveAgentPort { get; set; }

        /// <summary>
        /// Gets or Sets UnlabeledLoad
        /// </summary>
        [DataMember(Name = "unlabeledLoad", EmitDefaultValue = false)]
        public UnlabeledLoadStatistics UnlabeledLoad { get; set; }

        /// <summary>
        /// Gets or Sets UseCrumbs
        /// </summary>
        [DataMember(Name = "useCrumbs", EmitDefaultValue = true)]
        public bool UseCrumbs { get; set; }

        /// <summary>
        /// Gets or Sets UseSecurity
        /// </summary>
        [DataMember(Name = "useSecurity", EmitDefaultValue = true)]
        public bool UseSecurity { get; set; }

        /// <summary>
        /// Gets or Sets Views
        /// </summary>
        [DataMember(Name = "views", EmitDefaultValue = false)]
        public List<AllView> Views { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class Hudson {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  AssignedLabels: ").Append(AssignedLabels).Append("\n");
            sb.Append("  Mode: ").Append(Mode).Append("\n");
            sb.Append("  NodeDescription: ").Append(NodeDescription).Append("\n");
            sb.Append("  NodeName: ").Append(NodeName).Append("\n");
            sb.Append("  NumExecutors: ").Append(NumExecutors).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  Jobs: ").Append(Jobs).Append("\n");
            sb.Append("  PrimaryView: ").Append(PrimaryView).Append("\n");
            sb.Append("  QuietingDown: ").Append(QuietingDown).Append("\n");
            sb.Append("  SlaveAgentPort: ").Append(SlaveAgentPort).Append("\n");
            sb.Append("  UnlabeledLoad: ").Append(UnlabeledLoad).Append("\n");
            sb.Append("  UseCrumbs: ").Append(UseCrumbs).Append("\n");
            sb.Append("  UseSecurity: ").Append(UseSecurity).Append("\n");
            sb.Append("  Views: ").Append(Views).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
