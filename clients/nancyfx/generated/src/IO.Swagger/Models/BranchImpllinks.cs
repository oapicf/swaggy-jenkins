using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// BranchImpllinks
    /// </summary>
    public sealed class BranchImpllinks:  IEquatable<BranchImpllinks>
    { 
        /// <summary>
        /// Self
        /// </summary>
        public Link Self { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public Link Actions { get; private set; }

        /// <summary>
        /// Runs
        /// </summary>
        public Link Runs { get; private set; }

        /// <summary>
        /// Queue
        /// </summary>
        public Link Queue { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use BranchImpllinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public BranchImpllinks()
        {
        }

        private BranchImpllinks(Link Self, Link Actions, Link Runs, Link Queue, string Class)
        {
            
            this.Self = Self;
            
            this.Actions = Actions;
            
            this.Runs = Runs;
            
            this.Queue = Queue;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of BranchImpllinks.
        /// </summary>
        /// <returns>BranchImpllinksBuilder</returns>
        public static BranchImpllinksBuilder Builder()
        {
            return new BranchImpllinksBuilder();
        }

        /// <summary>
        /// Returns BranchImpllinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>BranchImpllinksBuilder</returns>
        public BranchImpllinksBuilder With()
        {
            return Builder()
                .Self(Self)
                .Actions(Actions)
                .Runs(Runs)
                .Queue(Queue)
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

        public bool Equals(BranchImpllinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (BranchImpllinks.
        /// </summary>
        /// <param name="left">Compared (BranchImpllinks</param>
        /// <param name="right">Compared (BranchImpllinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (BranchImpllinks left, BranchImpllinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (BranchImpllinks.
        /// </summary>
        /// <param name="left">Compared (BranchImpllinks</param>
        /// <param name="right">Compared (BranchImpllinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (BranchImpllinks left, BranchImpllinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of BranchImpllinks.
        /// </summary>
        public sealed class BranchImpllinksBuilder
        {
            private Link _Self;
            private Link _Actions;
            private Link _Runs;
            private Link _Queue;
            private string _Class;

            internal BranchImpllinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for BranchImpllinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public BranchImpllinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpllinks.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public BranchImpllinksBuilder Actions(Link value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpllinks.Runs property.
            /// </summary>
            /// <param name="value">Runs</param>
            public BranchImpllinksBuilder Runs(Link value)
            {
                _Runs = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpllinks.Queue property.
            /// </summary>
            /// <param name="value">Queue</param>
            public BranchImpllinksBuilder Queue(Link value)
            {
                _Queue = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpllinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public BranchImpllinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of BranchImpllinks.
            /// </summary>
            /// <returns>BranchImpllinks</returns>
            public BranchImpllinks Build()
            {
                Validate();
                return new BranchImpllinks(
                    Self: _Self,
                    Actions: _Actions,
                    Runs: _Runs,
                    Queue: _Queue,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}