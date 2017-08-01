using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelHudson
    /// </summary>
    public sealed class HudsonmodelHudson:  IEquatable<HudsonmodelHudson>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// AssignedLabels
        /// </summary>
        public List<HudsonmodelHudsonassignedLabels> AssignedLabels { get; private set; }

        /// <summary>
        /// Mode
        /// </summary>
        public string Mode { get; private set; }

        /// <summary>
        /// NodeDescription
        /// </summary>
        public string NodeDescription { get; private set; }

        /// <summary>
        /// NodeName
        /// </summary>
        public string NodeName { get; private set; }

        /// <summary>
        /// NumExecutors
        /// </summary>
        public int? NumExecutors { get; private set; }

        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// Jobs
        /// </summary>
        public List<HudsonmodelFreeStyleProject> Jobs { get; private set; }

        /// <summary>
        /// PrimaryView
        /// </summary>
        public HudsonmodelAllView PrimaryView { get; private set; }

        /// <summary>
        /// QuietingDown
        /// </summary>
        public bool? QuietingDown { get; private set; }

        /// <summary>
        /// SlaveAgentPort
        /// </summary>
        public int? SlaveAgentPort { get; private set; }

        /// <summary>
        /// UnlabeledLoad
        /// </summary>
        public JenkinsmodelUnlabeledLoadStatistics UnlabeledLoad { get; private set; }

        /// <summary>
        /// UseCrumbs
        /// </summary>
        public bool? UseCrumbs { get; private set; }

        /// <summary>
        /// UseSecurity
        /// </summary>
        public bool? UseSecurity { get; private set; }

        /// <summary>
        /// Views
        /// </summary>
        public List<HudsonmodelAllView> Views { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelHudson.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelHudson()
        {
        }

        private HudsonmodelHudson(string Class, List<HudsonmodelHudsonassignedLabels> AssignedLabels, string Mode, string NodeDescription, string NodeName, int? NumExecutors, string Description, List<HudsonmodelFreeStyleProject> Jobs, HudsonmodelAllView PrimaryView, bool? QuietingDown, int? SlaveAgentPort, JenkinsmodelUnlabeledLoadStatistics UnlabeledLoad, bool? UseCrumbs, bool? UseSecurity, List<HudsonmodelAllView> Views)
        {
            
            this.Class = Class;
            
            this.AssignedLabels = AssignedLabels;
            
            this.Mode = Mode;
            
            this.NodeDescription = NodeDescription;
            
            this.NodeName = NodeName;
            
            this.NumExecutors = NumExecutors;
            
            this.Description = Description;
            
            this.Jobs = Jobs;
            
            this.PrimaryView = PrimaryView;
            
            this.QuietingDown = QuietingDown;
            
            this.SlaveAgentPort = SlaveAgentPort;
            
            this.UnlabeledLoad = UnlabeledLoad;
            
            this.UseCrumbs = UseCrumbs;
            
            this.UseSecurity = UseSecurity;
            
            this.Views = Views;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelHudson.
        /// </summary>
        /// <returns>HudsonmodelHudsonBuilder</returns>
        public static HudsonmodelHudsonBuilder Builder()
        {
            return new HudsonmodelHudsonBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelHudsonBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelHudsonBuilder</returns>
        public HudsonmodelHudsonBuilder With()
        {
            return Builder()
                .Class(Class)
                .AssignedLabels(AssignedLabels)
                .Mode(Mode)
                .NodeDescription(NodeDescription)
                .NodeName(NodeName)
                .NumExecutors(NumExecutors)
                .Description(Description)
                .Jobs(Jobs)
                .PrimaryView(PrimaryView)
                .QuietingDown(QuietingDown)
                .SlaveAgentPort(SlaveAgentPort)
                .UnlabeledLoad(UnlabeledLoad)
                .UseCrumbs(UseCrumbs)
                .UseSecurity(UseSecurity)
                .Views(Views);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonmodelHudson other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelHudson.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudson</param>
        /// <param name="right">Compared (HudsonmodelHudson</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelHudson left, HudsonmodelHudson right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelHudson.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudson</param>
        /// <param name="right">Compared (HudsonmodelHudson</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelHudson left, HudsonmodelHudson right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelHudson.
        /// </summary>
        public sealed class HudsonmodelHudsonBuilder
        {
            private string _Class;
            private List<HudsonmodelHudsonassignedLabels> _AssignedLabels;
            private string _Mode;
            private string _NodeDescription;
            private string _NodeName;
            private int? _NumExecutors;
            private string _Description;
            private List<HudsonmodelFreeStyleProject> _Jobs;
            private HudsonmodelAllView _PrimaryView;
            private bool? _QuietingDown;
            private int? _SlaveAgentPort;
            private JenkinsmodelUnlabeledLoadStatistics _UnlabeledLoad;
            private bool? _UseCrumbs;
            private bool? _UseSecurity;
            private List<HudsonmodelAllView> _Views;

            internal HudsonmodelHudsonBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelHudsonBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.AssignedLabels property.
            /// </summary>
            /// <param name="value">AssignedLabels</param>
            public HudsonmodelHudsonBuilder AssignedLabels(List<HudsonmodelHudsonassignedLabels> value)
            {
                _AssignedLabels = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.Mode property.
            /// </summary>
            /// <param name="value">Mode</param>
            public HudsonmodelHudsonBuilder Mode(string value)
            {
                _Mode = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.NodeDescription property.
            /// </summary>
            /// <param name="value">NodeDescription</param>
            public HudsonmodelHudsonBuilder NodeDescription(string value)
            {
                _NodeDescription = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.NodeName property.
            /// </summary>
            /// <param name="value">NodeName</param>
            public HudsonmodelHudsonBuilder NodeName(string value)
            {
                _NodeName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.NumExecutors property.
            /// </summary>
            /// <param name="value">NumExecutors</param>
            public HudsonmodelHudsonBuilder NumExecutors(int? value)
            {
                _NumExecutors = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public HudsonmodelHudsonBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.Jobs property.
            /// </summary>
            /// <param name="value">Jobs</param>
            public HudsonmodelHudsonBuilder Jobs(List<HudsonmodelFreeStyleProject> value)
            {
                _Jobs = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.PrimaryView property.
            /// </summary>
            /// <param name="value">PrimaryView</param>
            public HudsonmodelHudsonBuilder PrimaryView(HudsonmodelAllView value)
            {
                _PrimaryView = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.QuietingDown property.
            /// </summary>
            /// <param name="value">QuietingDown</param>
            public HudsonmodelHudsonBuilder QuietingDown(bool? value)
            {
                _QuietingDown = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.SlaveAgentPort property.
            /// </summary>
            /// <param name="value">SlaveAgentPort</param>
            public HudsonmodelHudsonBuilder SlaveAgentPort(int? value)
            {
                _SlaveAgentPort = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.UnlabeledLoad property.
            /// </summary>
            /// <param name="value">UnlabeledLoad</param>
            public HudsonmodelHudsonBuilder UnlabeledLoad(JenkinsmodelUnlabeledLoadStatistics value)
            {
                _UnlabeledLoad = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.UseCrumbs property.
            /// </summary>
            /// <param name="value">UseCrumbs</param>
            public HudsonmodelHudsonBuilder UseCrumbs(bool? value)
            {
                _UseCrumbs = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.UseSecurity property.
            /// </summary>
            /// <param name="value">UseSecurity</param>
            public HudsonmodelHudsonBuilder UseSecurity(bool? value)
            {
                _UseSecurity = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudson.Views property.
            /// </summary>
            /// <param name="value">Views</param>
            public HudsonmodelHudsonBuilder Views(List<HudsonmodelAllView> value)
            {
                _Views = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelHudson.
            /// </summary>
            /// <returns>HudsonmodelHudson</returns>
            public HudsonmodelHudson Build()
            {
                Validate();
                return new HudsonmodelHudson(
                    Class: _Class,
                    AssignedLabels: _AssignedLabels,
                    Mode: _Mode,
                    NodeDescription: _NodeDescription,
                    NodeName: _NodeName,
                    NumExecutors: _NumExecutors,
                    Description: _Description,
                    Jobs: _Jobs,
                    PrimaryView: _PrimaryView,
                    QuietingDown: _QuietingDown,
                    SlaveAgentPort: _SlaveAgentPort,
                    UnlabeledLoad: _UnlabeledLoad,
                    UseCrumbs: _UseCrumbs,
                    UseSecurity: _UseSecurity,
                    Views: _Views
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
