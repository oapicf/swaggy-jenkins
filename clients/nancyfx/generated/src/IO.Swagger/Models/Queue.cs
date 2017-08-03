using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// Queue
    /// </summary>
    public sealed class Queue:  IEquatable<Queue>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Items
        /// </summary>
        public List<QueueBlockedItem> Items { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Queue.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Queue()
        {
        }

        private Queue(string Class, List<QueueBlockedItem> Items)
        {
            
            this.Class = Class;
            
            this.Items = Items;
            
        }

        /// <summary>
        /// Returns builder of Queue.
        /// </summary>
        /// <returns>QueueBuilder</returns>
        public static QueueBuilder Builder()
        {
            return new QueueBuilder();
        }

        /// <summary>
        /// Returns QueueBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>QueueBuilder</returns>
        public QueueBuilder With()
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

        public bool Equals(Queue other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Queue.
        /// </summary>
        /// <param name="left">Compared (Queue</param>
        /// <param name="right">Compared (Queue</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Queue left, Queue right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Queue.
        /// </summary>
        /// <param name="left">Compared (Queue</param>
        /// <param name="right">Compared (Queue</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Queue left, Queue right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Queue.
        /// </summary>
        public sealed class QueueBuilder
        {
            private string _Class;
            private List<QueueBlockedItem> _Items;

            internal QueueBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Queue.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public QueueBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for Queue.Items property.
            /// </summary>
            /// <param name="value">Items</param>
            public QueueBuilder Items(List<QueueBlockedItem> value)
            {
                _Items = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Queue.
            /// </summary>
            /// <returns>Queue</returns>
            public Queue Build()
            {
                Validate();
                return new Queue(
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