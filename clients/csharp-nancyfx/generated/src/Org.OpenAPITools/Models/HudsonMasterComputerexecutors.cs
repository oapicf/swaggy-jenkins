using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// HudsonMasterComputerexecutors
    /// </summary>
    public sealed class HudsonMasterComputerexecutors:  IEquatable<HudsonMasterComputerexecutors>
    { 
        /// <summary>
        /// CurrentExecutable
        /// </summary>
        public FreeStyleBuild CurrentExecutable { get; private set; }

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
        /// Use HudsonMasterComputerexecutors.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonMasterComputerexecutors()
        {
        }

        private HudsonMasterComputerexecutors(FreeStyleBuild CurrentExecutable, bool? Idle, bool? LikelyStuck, int? Number, int? Progress, string Class)
        {
            
            this.CurrentExecutable = CurrentExecutable;
            
            this.Idle = Idle;
            
            this.LikelyStuck = LikelyStuck;
            
            this.Number = Number;
            
            this.Progress = Progress;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonMasterComputerexecutors.
        /// </summary>
        /// <returns>HudsonMasterComputerexecutorsBuilder</returns>
        public static HudsonMasterComputerexecutorsBuilder Builder()
        {
            return new HudsonMasterComputerexecutorsBuilder();
        }

        /// <summary>
        /// Returns HudsonMasterComputerexecutorsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonMasterComputerexecutorsBuilder</returns>
        public HudsonMasterComputerexecutorsBuilder With()
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

        public bool Equals(HudsonMasterComputerexecutors other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonMasterComputerexecutors.
        /// </summary>
        /// <param name="left">Compared (HudsonMasterComputerexecutors</param>
        /// <param name="right">Compared (HudsonMasterComputerexecutors</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonMasterComputerexecutors left, HudsonMasterComputerexecutors right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonMasterComputerexecutors.
        /// </summary>
        /// <param name="left">Compared (HudsonMasterComputerexecutors</param>
        /// <param name="right">Compared (HudsonMasterComputerexecutors</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonMasterComputerexecutors left, HudsonMasterComputerexecutors right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonMasterComputerexecutors.
        /// </summary>
        public sealed class HudsonMasterComputerexecutorsBuilder
        {
            private FreeStyleBuild _CurrentExecutable;
            private bool? _Idle;
            private bool? _LikelyStuck;
            private int? _Number;
            private int? _Progress;
            private string _Class;

            internal HudsonMasterComputerexecutorsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonMasterComputerexecutors.CurrentExecutable property.
            /// </summary>
            /// <param name="value">CurrentExecutable</param>
            public HudsonMasterComputerexecutorsBuilder CurrentExecutable(FreeStyleBuild value)
            {
                _CurrentExecutable = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputerexecutors.Idle property.
            /// </summary>
            /// <param name="value">Idle</param>
            public HudsonMasterComputerexecutorsBuilder Idle(bool? value)
            {
                _Idle = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputerexecutors.LikelyStuck property.
            /// </summary>
            /// <param name="value">LikelyStuck</param>
            public HudsonMasterComputerexecutorsBuilder LikelyStuck(bool? value)
            {
                _LikelyStuck = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputerexecutors.Number property.
            /// </summary>
            /// <param name="value">Number</param>
            public HudsonMasterComputerexecutorsBuilder Number(int? value)
            {
                _Number = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputerexecutors.Progress property.
            /// </summary>
            /// <param name="value">Progress</param>
            public HudsonMasterComputerexecutorsBuilder Progress(int? value)
            {
                _Progress = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputerexecutors.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonMasterComputerexecutorsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonMasterComputerexecutors.
            /// </summary>
            /// <returns>HudsonMasterComputerexecutors</returns>
            public HudsonMasterComputerexecutors Build()
            {
                Validate();
                return new HudsonMasterComputerexecutors(
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