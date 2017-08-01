using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelComputerSet
    /// </summary>
    public sealed class HudsonmodelComputerSet:  IEquatable<HudsonmodelComputerSet>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// BusyExecutors
        /// </summary>
        public int? BusyExecutors { get; private set; }

        /// <summary>
        /// Computer
        /// </summary>
        public List<HudsonmodelHudsonMasterComputer> Computer { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// TotalExecutors
        /// </summary>
        public int? TotalExecutors { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelComputerSet.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelComputerSet()
        {
        }

        private HudsonmodelComputerSet(string Class, int? BusyExecutors, List<HudsonmodelHudsonMasterComputer> Computer, string DisplayName, int? TotalExecutors)
        {
            
            this.Class = Class;
            
            this.BusyExecutors = BusyExecutors;
            
            this.Computer = Computer;
            
            this.DisplayName = DisplayName;
            
            this.TotalExecutors = TotalExecutors;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelComputerSet.
        /// </summary>
        /// <returns>HudsonmodelComputerSetBuilder</returns>
        public static HudsonmodelComputerSetBuilder Builder()
        {
            return new HudsonmodelComputerSetBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelComputerSetBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelComputerSetBuilder</returns>
        public HudsonmodelComputerSetBuilder With()
        {
            return Builder()
                .Class(Class)
                .BusyExecutors(BusyExecutors)
                .Computer(Computer)
                .DisplayName(DisplayName)
                .TotalExecutors(TotalExecutors);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonmodelComputerSet other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelComputerSet.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelComputerSet</param>
        /// <param name="right">Compared (HudsonmodelComputerSet</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelComputerSet left, HudsonmodelComputerSet right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelComputerSet.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelComputerSet</param>
        /// <param name="right">Compared (HudsonmodelComputerSet</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelComputerSet left, HudsonmodelComputerSet right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelComputerSet.
        /// </summary>
        public sealed class HudsonmodelComputerSetBuilder
        {
            private string _Class;
            private int? _BusyExecutors;
            private List<HudsonmodelHudsonMasterComputer> _Computer;
            private string _DisplayName;
            private int? _TotalExecutors;

            internal HudsonmodelComputerSetBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelComputerSet.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelComputerSetBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelComputerSet.BusyExecutors property.
            /// </summary>
            /// <param name="value">BusyExecutors</param>
            public HudsonmodelComputerSetBuilder BusyExecutors(int? value)
            {
                _BusyExecutors = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelComputerSet.Computer property.
            /// </summary>
            /// <param name="value">Computer</param>
            public HudsonmodelComputerSetBuilder Computer(List<HudsonmodelHudsonMasterComputer> value)
            {
                _Computer = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelComputerSet.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public HudsonmodelComputerSetBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelComputerSet.TotalExecutors property.
            /// </summary>
            /// <param name="value">TotalExecutors</param>
            public HudsonmodelComputerSetBuilder TotalExecutors(int? value)
            {
                _TotalExecutors = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelComputerSet.
            /// </summary>
            /// <returns>HudsonmodelComputerSet</returns>
            public HudsonmodelComputerSet Build()
            {
                Validate();
                return new HudsonmodelComputerSet(
                    Class: _Class,
                    BusyExecutors: _BusyExecutors,
                    Computer: _Computer,
                    DisplayName: _DisplayName,
                    TotalExecutors: _TotalExecutors
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
