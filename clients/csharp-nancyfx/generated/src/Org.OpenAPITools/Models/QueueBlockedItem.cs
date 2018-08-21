using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// QueueBlockedItem
    /// </summary>
    public sealed class QueueBlockedItem:  IEquatable<QueueBlockedItem>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public List<CauseAction> Actions { get; private set; }

        /// <summary>
        /// Blocked
        /// </summary>
        public bool? Blocked { get; private set; }

        /// <summary>
        /// Buildable
        /// </summary>
        public bool? Buildable { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public int? Id { get; private set; }

        /// <summary>
        /// InQueueSince
        /// </summary>
        public int? InQueueSince { get; private set; }

        /// <summary>
        /// Params
        /// </summary>
        public string Params { get; private set; }

        /// <summary>
        /// Stuck
        /// </summary>
        public bool? Stuck { get; private set; }

        /// <summary>
        /// Task
        /// </summary>
        public FreeStyleProject Task { get; private set; }

        /// <summary>
        /// Url
        /// </summary>
        public string Url { get; private set; }

        /// <summary>
        /// Why
        /// </summary>
        public string Why { get; private set; }

        /// <summary>
        /// BuildableStartMilliseconds
        /// </summary>
        public int? BuildableStartMilliseconds { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use QueueBlockedItem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public QueueBlockedItem()
        {
        }

        private QueueBlockedItem(string Class, List<CauseAction> Actions, bool? Blocked, bool? Buildable, int? Id, int? InQueueSince, string Params, bool? Stuck, FreeStyleProject Task, string Url, string Why, int? BuildableStartMilliseconds)
        {
            
            this.Class = Class;
            
            this.Actions = Actions;
            
            this.Blocked = Blocked;
            
            this.Buildable = Buildable;
            
            this.Id = Id;
            
            this.InQueueSince = InQueueSince;
            
            this.Params = Params;
            
            this.Stuck = Stuck;
            
            this.Task = Task;
            
            this.Url = Url;
            
            this.Why = Why;
            
            this.BuildableStartMilliseconds = BuildableStartMilliseconds;
            
        }

        /// <summary>
        /// Returns builder of QueueBlockedItem.
        /// </summary>
        /// <returns>QueueBlockedItemBuilder</returns>
        public static QueueBlockedItemBuilder Builder()
        {
            return new QueueBlockedItemBuilder();
        }

        /// <summary>
        /// Returns QueueBlockedItemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>QueueBlockedItemBuilder</returns>
        public QueueBlockedItemBuilder With()
        {
            return Builder()
                .Class(Class)
                .Actions(Actions)
                .Blocked(Blocked)
                .Buildable(Buildable)
                .Id(Id)
                .InQueueSince(InQueueSince)
                .Params(Params)
                .Stuck(Stuck)
                .Task(Task)
                .Url(Url)
                .Why(Why)
                .BuildableStartMilliseconds(BuildableStartMilliseconds);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(QueueBlockedItem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (QueueBlockedItem.
        /// </summary>
        /// <param name="left">Compared (QueueBlockedItem</param>
        /// <param name="right">Compared (QueueBlockedItem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (QueueBlockedItem left, QueueBlockedItem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (QueueBlockedItem.
        /// </summary>
        /// <param name="left">Compared (QueueBlockedItem</param>
        /// <param name="right">Compared (QueueBlockedItem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (QueueBlockedItem left, QueueBlockedItem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of QueueBlockedItem.
        /// </summary>
        public sealed class QueueBlockedItemBuilder
        {
            private string _Class;
            private List<CauseAction> _Actions;
            private bool? _Blocked;
            private bool? _Buildable;
            private int? _Id;
            private int? _InQueueSince;
            private string _Params;
            private bool? _Stuck;
            private FreeStyleProject _Task;
            private string _Url;
            private string _Why;
            private int? _BuildableStartMilliseconds;

            internal QueueBlockedItemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public QueueBlockedItemBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public QueueBlockedItemBuilder Actions(List<CauseAction> value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Blocked property.
            /// </summary>
            /// <param name="value">Blocked</param>
            public QueueBlockedItemBuilder Blocked(bool? value)
            {
                _Blocked = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Buildable property.
            /// </summary>
            /// <param name="value">Buildable</param>
            public QueueBlockedItemBuilder Buildable(bool? value)
            {
                _Buildable = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public QueueBlockedItemBuilder Id(int? value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.InQueueSince property.
            /// </summary>
            /// <param name="value">InQueueSince</param>
            public QueueBlockedItemBuilder InQueueSince(int? value)
            {
                _InQueueSince = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Params property.
            /// </summary>
            /// <param name="value">Params</param>
            public QueueBlockedItemBuilder Params(string value)
            {
                _Params = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Stuck property.
            /// </summary>
            /// <param name="value">Stuck</param>
            public QueueBlockedItemBuilder Stuck(bool? value)
            {
                _Stuck = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Task property.
            /// </summary>
            /// <param name="value">Task</param>
            public QueueBlockedItemBuilder Task(FreeStyleProject value)
            {
                _Task = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public QueueBlockedItemBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.Why property.
            /// </summary>
            /// <param name="value">Why</param>
            public QueueBlockedItemBuilder Why(string value)
            {
                _Why = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueBlockedItem.BuildableStartMilliseconds property.
            /// </summary>
            /// <param name="value">BuildableStartMilliseconds</param>
            public QueueBlockedItemBuilder BuildableStartMilliseconds(int? value)
            {
                _BuildableStartMilliseconds = value;
                return this;
            }


            /// <summary>
            /// Builds instance of QueueBlockedItem.
            /// </summary>
            /// <returns>QueueBlockedItem</returns>
            public QueueBlockedItem Build()
            {
                Validate();
                return new QueueBlockedItem(
                    Class: _Class,
                    Actions: _Actions,
                    Blocked: _Blocked,
                    Buildable: _Buildable,
                    Id: _Id,
                    InQueueSince: _InQueueSince,
                    Params: _Params,
                    Stuck: _Stuck,
                    Task: _Task,
                    Url: _Url,
                    Why: _Why,
                    BuildableStartMilliseconds: _BuildableStartMilliseconds
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}