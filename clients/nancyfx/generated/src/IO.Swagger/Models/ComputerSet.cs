using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// ComputerSet
    /// </summary>
    public sealed class ComputerSet:  IEquatable<ComputerSet>
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
        public List<HudsonMasterComputer> Computer { get; private set; }

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
        /// Use ComputerSet.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ComputerSet()
        {
        }

        private ComputerSet(string Class, int? BusyExecutors, List<HudsonMasterComputer> Computer, string DisplayName, int? TotalExecutors)
        {
            
            this.Class = Class;
            
            this.BusyExecutors = BusyExecutors;
            
            this.Computer = Computer;
            
            this.DisplayName = DisplayName;
            
            this.TotalExecutors = TotalExecutors;
            
        }

        /// <summary>
        /// Returns builder of ComputerSet.
        /// </summary>
        /// <returns>ComputerSetBuilder</returns>
        public static ComputerSetBuilder Builder()
        {
            return new ComputerSetBuilder();
        }

        /// <summary>
        /// Returns ComputerSetBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ComputerSetBuilder</returns>
        public ComputerSetBuilder With()
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

        public bool Equals(ComputerSet other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ComputerSet.
        /// </summary>
        /// <param name="left">Compared (ComputerSet</param>
        /// <param name="right">Compared (ComputerSet</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ComputerSet left, ComputerSet right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ComputerSet.
        /// </summary>
        /// <param name="left">Compared (ComputerSet</param>
        /// <param name="right">Compared (ComputerSet</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ComputerSet left, ComputerSet right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ComputerSet.
        /// </summary>
        public sealed class ComputerSetBuilder
        {
            private string _Class;
            private int? _BusyExecutors;
            private List<HudsonMasterComputer> _Computer;
            private string _DisplayName;
            private int? _TotalExecutors;

            internal ComputerSetBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ComputerSet.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ComputerSetBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for ComputerSet.BusyExecutors property.
            /// </summary>
            /// <param name="value">BusyExecutors</param>
            public ComputerSetBuilder BusyExecutors(int? value)
            {
                _BusyExecutors = value;
                return this;
            }

            /// <summary>
            /// Sets value for ComputerSet.Computer property.
            /// </summary>
            /// <param name="value">Computer</param>
            public ComputerSetBuilder Computer(List<HudsonMasterComputer> value)
            {
                _Computer = value;
                return this;
            }

            /// <summary>
            /// Sets value for ComputerSet.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public ComputerSetBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for ComputerSet.TotalExecutors property.
            /// </summary>
            /// <param name="value">TotalExecutors</param>
            public ComputerSetBuilder TotalExecutors(int? value)
            {
                _TotalExecutors = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ComputerSet.
            /// </summary>
            /// <returns>ComputerSet</returns>
            public ComputerSet Build()
            {
                Validate();
                return new ComputerSet(
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