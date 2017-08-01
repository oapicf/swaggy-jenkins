using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelQueueBlockedItem
    /// </summary>
    public sealed class HudsonmodelQueueBlockedItem:  IEquatable<HudsonmodelQueueBlockedItem>
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
        /// BuildableStartMilliseconds
        /// </summary>
        public int? BuildableStartMilliseconds { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelQueueBlockedItem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelQueueBlockedItem()
        {
        }

        private HudsonmodelQueueBlockedItem(string Class, List<HudsonmodelCauseAction> Actions, bool? Blocked, bool? Buildable, int? Id, int? InQueueSince, string Params, bool? Stuck, HudsonmodelFreeStyleProject Task, string Url, string Why, int? BuildableStartMilliseconds)
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
        /// Returns builder of HudsonmodelQueueBlockedItem.
        /// </summary>
        /// <returns>HudsonmodelQueueBlockedItemBuilder</returns>
        public static HudsonmodelQueueBlockedItemBuilder Builder()
        {
            return new HudsonmodelQueueBlockedItemBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelQueueBlockedItemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelQueueBlockedItemBuilder</returns>
        public HudsonmodelQueueBlockedItemBuilder With()
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

        public bool Equals(HudsonmodelQueueBlockedItem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelQueueBlockedItem.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelQueueBlockedItem</param>
        /// <param name="right">Compared (HudsonmodelQueueBlockedItem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelQueueBlockedItem left, HudsonmodelQueueBlockedItem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelQueueBlockedItem.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelQueueBlockedItem</param>
        /// <param name="right">Compared (HudsonmodelQueueBlockedItem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelQueueBlockedItem left, HudsonmodelQueueBlockedItem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelQueueBlockedItem.
        /// </summary>
        public sealed class HudsonmodelQueueBlockedItemBuilder
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
            private int? _BuildableStartMilliseconds;

            internal HudsonmodelQueueBlockedItemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelQueueBlockedItemBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public HudsonmodelQueueBlockedItemBuilder Actions(List<HudsonmodelCauseAction> value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Blocked property.
            /// </summary>
            /// <param name="value">Blocked</param>
            public HudsonmodelQueueBlockedItemBuilder Blocked(bool? value)
            {
                _Blocked = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Buildable property.
            /// </summary>
            /// <param name="value">Buildable</param>
            public HudsonmodelQueueBlockedItemBuilder Buildable(bool? value)
            {
                _Buildable = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public HudsonmodelQueueBlockedItemBuilder Id(int? value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.InQueueSince property.
            /// </summary>
            /// <param name="value">InQueueSince</param>
            public HudsonmodelQueueBlockedItemBuilder InQueueSince(int? value)
            {
                _InQueueSince = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Params property.
            /// </summary>
            /// <param name="value">Params</param>
            public HudsonmodelQueueBlockedItemBuilder Params(string value)
            {
                _Params = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Stuck property.
            /// </summary>
            /// <param name="value">Stuck</param>
            public HudsonmodelQueueBlockedItemBuilder Stuck(bool? value)
            {
                _Stuck = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Task property.
            /// </summary>
            /// <param name="value">Task</param>
            public HudsonmodelQueueBlockedItemBuilder Task(HudsonmodelFreeStyleProject value)
            {
                _Task = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public HudsonmodelQueueBlockedItemBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.Why property.
            /// </summary>
            /// <param name="value">Why</param>
            public HudsonmodelQueueBlockedItemBuilder Why(string value)
            {
                _Why = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelQueueBlockedItem.BuildableStartMilliseconds property.
            /// </summary>
            /// <param name="value">BuildableStartMilliseconds</param>
            public HudsonmodelQueueBlockedItemBuilder BuildableStartMilliseconds(int? value)
            {
                _BuildableStartMilliseconds = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelQueueBlockedItem.
            /// </summary>
            /// <returns>HudsonmodelQueueBlockedItem</returns>
            public HudsonmodelQueueBlockedItem Build()
            {
                Validate();
                return new HudsonmodelQueueBlockedItem(
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
