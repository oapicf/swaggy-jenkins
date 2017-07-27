using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelHudsonMasterComputerexecutors
    /// </summary>
    public sealed class HudsonmodelHudsonMasterComputerexecutors:  IEquatable<HudsonmodelHudsonMasterComputerexecutors>
    { 
        /// <summary>
        /// CurrentExecutable
        /// </summary>
        public HudsonmodelFreeStyleBuild CurrentExecutable { get; private set; }

        /// <summary>
        /// Idle
        /// </summary>
        public bool? Idle { get; private set; }

        /// <summary>
        /// LikelyStuck
        /// </summary>
        public bool? LikelyStuck { get; private set; }

        /// <summary>
        /// Number
        /// </summary>
        public int? Number { get; private set; }

        /// <summary>
        /// Progress
        /// </summary>
        public int? Progress { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelHudsonMasterComputerexecutors.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelHudsonMasterComputerexecutors()
        {
        }

        private HudsonmodelHudsonMasterComputerexecutors(HudsonmodelFreeStyleBuild CurrentExecutable, bool? Idle, bool? LikelyStuck, int? Number, int? Progress, string Class)
        {
            
            this.CurrentExecutable = CurrentExecutable;
            
            this.Idle = Idle;
            
            this.LikelyStuck = LikelyStuck;
            
            this.Number = Number;
            
            this.Progress = Progress;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelHudsonMasterComputerexecutors.
        /// </summary>
        /// <returns>HudsonmodelHudsonMasterComputerexecutorsBuilder</returns>
        public static HudsonmodelHudsonMasterComputerexecutorsBuilder Builder()
        {
            return new HudsonmodelHudsonMasterComputerexecutorsBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelHudsonMasterComputerexecutorsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelHudsonMasterComputerexecutorsBuilder</returns>
        public HudsonmodelHudsonMasterComputerexecutorsBuilder With()
        {
            return Builder()
                .CurrentExecutable(CurrentExecutable)
                .Idle(Idle)
                .LikelyStuck(LikelyStuck)
                .Number(Number)
                .Progress(Progress)
                .Class(Class);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonmodelHudsonMasterComputerexecutors other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelHudsonMasterComputerexecutors.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonMasterComputerexecutors</param>
        /// <param name="right">Compared (HudsonmodelHudsonMasterComputerexecutors</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelHudsonMasterComputerexecutors left, HudsonmodelHudsonMasterComputerexecutors right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelHudsonMasterComputerexecutors.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonMasterComputerexecutors</param>
        /// <param name="right">Compared (HudsonmodelHudsonMasterComputerexecutors</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelHudsonMasterComputerexecutors left, HudsonmodelHudsonMasterComputerexecutors right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelHudsonMasterComputerexecutors.
        /// </summary>
        public sealed class HudsonmodelHudsonMasterComputerexecutorsBuilder
        {
            private HudsonmodelFreeStyleBuild _CurrentExecutable;
            private bool? _Idle;
            private bool? _LikelyStuck;
            private int? _Number;
            private int? _Progress;
            private string _Class;

            internal HudsonmodelHudsonMasterComputerexecutorsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerexecutors.CurrentExecutable property.
            /// </summary>
            /// <param name="value">CurrentExecutable</param>
            public HudsonmodelHudsonMasterComputerexecutorsBuilder CurrentExecutable(HudsonmodelFreeStyleBuild value)
            {
                _CurrentExecutable = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerexecutors.Idle property.
            /// </summary>
            /// <param name="value">Idle</param>
            public HudsonmodelHudsonMasterComputerexecutorsBuilder Idle(bool? value)
            {
                _Idle = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerexecutors.LikelyStuck property.
            /// </summary>
            /// <param name="value">LikelyStuck</param>
            public HudsonmodelHudsonMasterComputerexecutorsBuilder LikelyStuck(bool? value)
            {
                _LikelyStuck = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerexecutors.Number property.
            /// </summary>
            /// <param name="value">Number</param>
            public HudsonmodelHudsonMasterComputerexecutorsBuilder Number(int? value)
            {
                _Number = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerexecutors.Progress property.
            /// </summary>
            /// <param name="value">Progress</param>
            public HudsonmodelHudsonMasterComputerexecutorsBuilder Progress(int? value)
            {
                _Progress = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerexecutors.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelHudsonMasterComputerexecutorsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelHudsonMasterComputerexecutors.
            /// </summary>
            /// <returns>HudsonmodelHudsonMasterComputerexecutors</returns>
            public HudsonmodelHudsonMasterComputerexecutors Build()
            {
                Validate();
                return new HudsonmodelHudsonMasterComputerexecutors(
                    CurrentExecutable: _CurrentExecutable,
                    Idle: _Idle,
                    LikelyStuck: _LikelyStuck,
                    Number: _Number,
                    Progress: _Progress,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
