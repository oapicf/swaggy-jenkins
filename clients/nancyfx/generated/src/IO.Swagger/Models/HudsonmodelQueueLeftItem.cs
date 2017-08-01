using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelQueueLeftItem
    /// </summary>
    public sealed class HudsonmodelQueueLeftItem:  IEquatable<HudsonmodelQueueLeftItem>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public List<HudsonmodelCauseAction> Actions { get; private set; }

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
        public HudsonmodelFreeStyleProject Task { get; private set; }

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
        public HudsonmodelFreeStyleBuild Executable { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelQueueLeftItem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelQueueLeftItem()
        {
        }

        private HudsonmodelQueueLeftItem(string Class, List<HudsonmodelCauseAction> Actions, bool? Blocked, bool? Buildable, int? Id, int? InQueueSince, string Params, bool? Stuck, HudsonmodelFreeStyleProject Task, string Url, string Why, bool? Cancelled, HudsonmodelFreeStyleBuild Executable)
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
        /// Returns builder of HudsonmodelQueueLeftItem.
        /// </summary>
        /// <returns>HudsonmodelQueueLeftItemBuilder</returns>
        public static HudsonmodelQueueLeftItemBuilder Builder()
        {
            return new HudsonmodelQueueLeftItemBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelQueueLeftItemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelQueueLeftItemBuilder</returns>
        public HudsonmodelQueueLeftItemBuilder With()
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

        public bool Equals(HudsonmodelQueueLeftItem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelQueueLeftItem.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelQueueLeftItem</param>
        /// <param name="right">Compared (HudsonmodelQueueLeftItem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelQueueLeftItem left, HudsonmodelQueueLeftItem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelQueueLeftItem.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelQueueLeftItem</param>
        /// <param name="right">Compared (HudsonmodelQueueLeftItem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelQueueLeftItem left, HudsonmodelQueueLeftItem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelQueueLeftItem.
        /// </summary>
        public sealed class HudsonmodelQueueLeftItemBuilder
        {
            private string _Class;
            private List<HudsonmodelCauseAction> _Actions;
            private bool? _Blocked;
            private bool? _Buildable;
            private int? _Id;
            private int? _InQueueSince;
            private string _Params;
            private bool? _Stuck;
            private HudsonmodelFreeStyleProject _Task;
            private string _Url;
            private string _Why;
            private bool? _Cancelled;
            private HudsonmodelFreeStyleBuild _Executable;

            internal HudsonmodelQueueLeftItemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelQueueLeftItemBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public HudsonmodelQueueLeftItemBuilder Actions(List<HudsonmodelCauseAction> value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Blocked property.
            /// </summary>
            /// <param name="value">Blocked</param>
            public HudsonmodelQueueLeftItemBuilder Blocked(bool? value)
            {
                _Blocked = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Buildable property.
            /// </summary>
            /// <param name="value">Buildable</param>
            public HudsonmodelQueueLeftItemBuilder Buildable(bool? value)
            {
                _Buildable = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public HudsonmodelQueueLeftItemBuilder Id(int? value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.InQueueSince property.
            /// </summary>
            /// <param name="value">InQueueSince</param>
            public HudsonmodelQueueLeftItemBuilder InQueueSince(int? value)
            {
                _InQueueSince = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Params property.
            /// </summary>
            /// <param name="value">Params</param>
            public HudsonmodelQueueLeftItemBuilder Params(string value)
            {
                _Params = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Stuck property.
            /// </summary>
            /// <param name="value">Stuck</param>
            public HudsonmodelQueueLeftItemBuilder Stuck(bool? value)
            {
                _Stuck = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Task property.
            /// </summary>
            /// <param name="value">Task</param>
            public HudsonmodelQueueLeftItemBuilder Task(HudsonmodelFreeStyleProject value)
            {
                _Task = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public HudsonmodelQueueLeftItemBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Why property.
            /// </summary>
            /// <param name="value">Why</param>
            public HudsonmodelQueueLeftItemBuilder Why(string value)
            {
                _Why = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Cancelled property.
            /// </summary>
            /// <param name="value">Cancelled</param>
            public HudsonmodelQueueLeftItemBuilder Cancelled(bool? value)
            {
                _Cancelled = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueLeftItem.Executable property.
            /// </summary>
            /// <param name="value">Executable</param>
            public HudsonmodelQueueLeftItemBuilder Executable(HudsonmodelFreeStyleBuild value)
            {
                _Executable = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelQueueLeftItem.
            /// </summary>
            /// <returns>HudsonmodelQueueLeftItem</returns>
            public HudsonmodelQueueLeftItem Build()
            {
                Validate();
                return new HudsonmodelQueueLeftItem(
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
