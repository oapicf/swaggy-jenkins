using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// QueueLeftItem
    /// </summary>
    public sealed class QueueLeftItem:  IEquatable<QueueLeftItem>
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
        /// Cancelled
        /// </summary>
        public bool? Cancelled { get; private set; }

        /// <summary>
        /// Executable
        /// </summary>
        public FreeStyleBuild Executable { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use QueueLeftItem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public QueueLeftItem()
        {
        }

        private QueueLeftItem(string Class, List<CauseAction> Actions, bool? Blocked, bool? Buildable, int? Id, int? InQueueSince, string Params, bool? Stuck, FreeStyleProject Task, string Url, string Why, bool? Cancelled, FreeStyleBuild Executable)
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
            
            this.Cancelled = Cancelled;
            
            this.Executable = Executable;
            
        }

        /// <summary>
        /// Returns builder of QueueLeftItem.
        /// </summary>
        /// <returns>QueueLeftItemBuilder</returns>
        public static QueueLeftItemBuilder Builder()
        {
            return new QueueLeftItemBuilder();
        }

        /// <summary>
        /// Returns QueueLeftItemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>QueueLeftItemBuilder</returns>
        public QueueLeftItemBuilder With()
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
                .Cancelled(Cancelled)
                .Executable(Executable);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(QueueLeftItem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (QueueLeftItem.
        /// </summary>
        /// <param name="left">Compared (QueueLeftItem</param>
        /// <param name="right">Compared (QueueLeftItem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (QueueLeftItem left, QueueLeftItem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (QueueLeftItem.
        /// </summary>
        /// <param name="left">Compared (QueueLeftItem</param>
        /// <param name="right">Compared (QueueLeftItem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (QueueLeftItem left, QueueLeftItem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of QueueLeftItem.
        /// </summary>
        public sealed class QueueLeftItemBuilder
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
            private bool? _Cancelled;
            private FreeStyleBuild _Executable;

            internal QueueLeftItemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public QueueLeftItemBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public QueueLeftItemBuilder Actions(List<CauseAction> value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Blocked property.
            /// </summary>
            /// <param name="value">Blocked</param>
            public QueueLeftItemBuilder Blocked(bool? value)
            {
                _Blocked = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Buildable property.
            /// </summary>
            /// <param name="value">Buildable</param>
            public QueueLeftItemBuilder Buildable(bool? value)
            {
                _Buildable = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public QueueLeftItemBuilder Id(int? value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.InQueueSince property.
            /// </summary>
            /// <param name="value">InQueueSince</param>
            public QueueLeftItemBuilder InQueueSince(int? value)
            {
                _InQueueSince = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Params property.
            /// </summary>
            /// <param name="value">Params</param>
            public QueueLeftItemBuilder Params(string value)
            {
                _Params = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Stuck property.
            /// </summary>
            /// <param name="value">Stuck</param>
            public QueueLeftItemBuilder Stuck(bool? value)
            {
                _Stuck = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Task property.
            /// </summary>
            /// <param name="value">Task</param>
            public QueueLeftItemBuilder Task(FreeStyleProject value)
            {
                _Task = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public QueueLeftItemBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Why property.
            /// </summary>
            /// <param name="value">Why</param>
            public QueueLeftItemBuilder Why(string value)
            {
                _Why = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Cancelled property.
            /// </summary>
            /// <param name="value">Cancelled</param>
            public QueueLeftItemBuilder Cancelled(bool? value)
            {
                _Cancelled = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueLeftItem.Executable property.
            /// </summary>
            /// <param name="value">Executable</param>
            public QueueLeftItemBuilder Executable(FreeStyleBuild value)
            {
                _Executable = value;
                return this;
            }


            /// <summary>
            /// Builds instance of QueueLeftItem.
            /// </summary>
            /// <returns>QueueLeftItem</returns>
            public QueueLeftItem Build()
            {
                Validate();
                return new QueueLeftItem(
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
                    Cancelled: _Cancelled,
                    Executable: _Executable
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}