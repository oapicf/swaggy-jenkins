using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelQueue
    /// </summary>
    public sealed class HudsonmodelQueue:  IEquatable<HudsonmodelQueue>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Items
        /// </summary>
        public List<HudsonmodelQueueBlockedItem> Items { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelQueue.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelQueue()
        {
        }

        private HudsonmodelQueue(string Class, List<HudsonmodelQueueBlockedItem> Items)
        {
            
            this.Class = Class;
            
            this.Items = Items;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelQueue.
        /// </summary>
        /// <returns>HudsonmodelQueueBuilder</returns>
        public static HudsonmodelQueueBuilder Builder()
        {
            return new HudsonmodelQueueBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelQueueBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelQueueBuilder</returns>
        public HudsonmodelQueueBuilder With()
        {
            return Builder()
                .Class(Class)
                .Items(Items);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonmodelQueue other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelQueue.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelQueue</param>
        /// <param name="right">Compared (HudsonmodelQueue</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelQueue left, HudsonmodelQueue right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelQueue.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelQueue</param>
        /// <param name="right">Compared (HudsonmodelQueue</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelQueue left, HudsonmodelQueue right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelQueue.
        /// </summary>
        public sealed class HudsonmodelQueueBuilder
        {
            private string _Class;
            private List<HudsonmodelQueueBlockedItem> _Items;

            internal HudsonmodelQueueBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelQueue.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelQueueBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueue.Items property.
            /// </summary>
            /// <param name="value">Items</param>
            public HudsonmodelQueueBuilder Items(List<HudsonmodelQueueBlockedItem> value)
            {
                _Items = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelQueue.
            /// </summary>
            /// <returns>HudsonmodelQueue</returns>
            public HudsonmodelQueue Build()
            {
                Validate();
                return new HudsonmodelQueue(
                    Class: _Class,
                    Items: _Items
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
