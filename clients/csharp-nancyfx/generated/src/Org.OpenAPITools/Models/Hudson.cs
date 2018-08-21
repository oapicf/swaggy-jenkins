using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// Hudson
    /// </summary>
    public sealed class Hudson:  IEquatable<Hudson>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// AssignedLabels
        /// </summary>
        public List<HudsonassignedLabels> AssignedLabels { get; private set; }

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
        public List<FreeStyleProject> Jobs { get; private set; }

        /// <summary>
        /// PrimaryView
        /// </summary>
        public AllView PrimaryView { get; private set; }

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
        public UnlabeledLoadStatistics UnlabeledLoad { get; private set; }

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
        public List<AllView> Views { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Hudson.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Hudson()
        {
        }

        private Hudson(string Class, List<HudsonassignedLabels> AssignedLabels, string Mode, string NodeDescription, string NodeName, int? NumExecutors, string Description, List<FreeStyleProject> Jobs, AllView PrimaryView, bool? QuietingDown, int? SlaveAgentPort, UnlabeledLoadStatistics UnlabeledLoad, bool? UseCrumbs, bool? UseSecurity, List<AllView> Views)
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
        /// Returns builder of Hudson.
        /// </summary>
        /// <returns>HudsonBuilder</returns>
        public static HudsonBuilder Builder()
        {
            return new HudsonBuilder();
        }

        /// <summary>
        /// Returns HudsonBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonBuilder</returns>
        public HudsonBuilder With()
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

        public bool Equals(Hudson other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Hudson.
        /// </summary>
        /// <param name="left">Compared (Hudson</param>
        /// <param name="right">Compared (Hudson</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Hudson left, Hudson right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Hudson.
        /// </summary>
        /// <param name="left">Compared (Hudson</param>
        /// <param name="right">Compared (Hudson</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Hudson left, Hudson right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Hudson.
        /// </summary>
        public sealed class HudsonBuilder
        {
            private string _Class;
            private List<HudsonassignedLabels> _AssignedLabels;
            private string _Mode;
            private string _NodeDescription;
            private string _NodeName;
            private int? _NumExecutors;
            private string _Description;
            private List<FreeStyleProject> _Jobs;
            private AllView _PrimaryView;
            private bool? _QuietingDown;
            private int? _SlaveAgentPort;
            private UnlabeledLoadStatistics _UnlabeledLoad;
            private bool? _UseCrumbs;
            private bool? _UseSecurity;
            private List<AllView> _Views;

            internal HudsonBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Hudson.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.AssignedLabels property.
            /// </summary>
            /// <param name="value">AssignedLabels</param>
            public HudsonBuilder AssignedLabels(List<HudsonassignedLabels> value)
            {
                _AssignedLabels = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.Mode property.
            /// </summary>
            /// <param name="value">Mode</param>
            public HudsonBuilder Mode(string value)
            {
                _Mode = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.NodeDescription property.
            /// </summary>
            /// <param name="value">NodeDescription</param>
            public HudsonBuilder NodeDescription(string value)
            {
                _NodeDescription = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.NodeName property.
            /// </summary>
            /// <param name="value">NodeName</param>
            public HudsonBuilder NodeName(string value)
            {
                _NodeName = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.NumExecutors property.
            /// </summary>
            /// <param name="value">NumExecutors</param>
            public HudsonBuilder NumExecutors(int? value)
            {
                _NumExecutors = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public HudsonBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.Jobs property.
            /// </summary>
            /// <param name="value">Jobs</param>
            public HudsonBuilder Jobs(List<FreeStyleProject> value)
            {
                _Jobs = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.PrimaryView property.
            /// </summary>
            /// <param name="value">PrimaryView</param>
            public HudsonBuilder PrimaryView(AllView value)
            {
                _PrimaryView = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.QuietingDown property.
            /// </summary>
            /// <param name="value">QuietingDown</param>
            public HudsonBuilder QuietingDown(bool? value)
            {
                _QuietingDown = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.SlaveAgentPort property.
            /// </summary>
            /// <param name="value">SlaveAgentPort</param>
            public HudsonBuilder SlaveAgentPort(int? value)
            {
                _SlaveAgentPort = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.UnlabeledLoad property.
            /// </summary>
            /// <param name="value">UnlabeledLoad</param>
            public HudsonBuilder UnlabeledLoad(UnlabeledLoadStatistics value)
            {
                _UnlabeledLoad = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.UseCrumbs property.
            /// </summary>
            /// <param name="value">UseCrumbs</param>
            public HudsonBuilder UseCrumbs(bool? value)
            {
                _UseCrumbs = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.UseSecurity property.
            /// </summary>
            /// <param name="value">UseSecurity</param>
            public HudsonBuilder UseSecurity(bool? value)
            {
                _UseSecurity = value;
                return this;
            }

            /// <summary>
            /// Sets value for Hudson.Views property.
            /// </summary>
            /// <param name="value">Views</param>
            public HudsonBuilder Views(List<AllView> value)
            {
                _Views = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Hudson.
            /// </summary>
            /// <returns>Hudson</returns>
            public Hudson Build()
            {
                Validate();
                return new Hudson(
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