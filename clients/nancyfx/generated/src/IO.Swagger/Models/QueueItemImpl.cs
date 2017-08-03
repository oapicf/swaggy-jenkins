using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// QueueItemImpl
    /// </summary>
    public sealed class QueueItemImpl:  IEquatable<QueueItemImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// ExpectedBuildNumber
        /// </summary>
        public int? ExpectedBuildNumber { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Pipeline
        /// </summary>
        public string Pipeline { get; private set; }

        /// <summary>
        /// QueuedTime
        /// </summary>
        public int? QueuedTime { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use QueueItemImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public QueueItemImpl()
        {
        }

        private QueueItemImpl(string Class, int? ExpectedBuildNumber, string Id, string Pipeline, int? QueuedTime)
        {
            
            this.Class = Class;
            
            this.ExpectedBuildNumber = ExpectedBuildNumber;
            
            this.Id = Id;
            
            this.Pipeline = Pipeline;
            
            this.QueuedTime = QueuedTime;
            
        }

        /// <summary>
        /// Returns builder of QueueItemImpl.
        /// </summary>
        /// <returns>QueueItemImplBuilder</returns>
        public static QueueItemImplBuilder Builder()
        {
            return new QueueItemImplBuilder();
        }

        /// <summary>
        /// Returns QueueItemImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>QueueItemImplBuilder</returns>
        public QueueItemImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .ExpectedBuildNumber(ExpectedBuildNumber)
                .Id(Id)
                .Pipeline(Pipeline)
                .QueuedTime(QueuedTime);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(QueueItemImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (QueueItemImpl.
        /// </summary>
        /// <param name="left">Compared (QueueItemImpl</param>
        /// <param name="right">Compared (QueueItemImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (QueueItemImpl left, QueueItemImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (QueueItemImpl.
        /// </summary>
        /// <param name="left">Compared (QueueItemImpl</param>
        /// <param name="right">Compared (QueueItemImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (QueueItemImpl left, QueueItemImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of QueueItemImpl.
        /// </summary>
        public sealed class QueueItemImplBuilder
        {
            private string _Class;
            private int? _ExpectedBuildNumber;
            private string _Id;
            private string _Pipeline;
            private int? _QueuedTime;

            internal QueueItemImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for QueueItemImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public QueueItemImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueItemImpl.ExpectedBuildNumber property.
            /// </summary>
            /// <param name="value">ExpectedBuildNumber</param>
            public QueueItemImplBuilder ExpectedBuildNumber(int? value)
            {
                _ExpectedBuildNumber = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueItemImpl.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public QueueItemImplBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueItemImpl.Pipeline property.
            /// </summary>
            /// <param name="value">Pipeline</param>
            public QueueItemImplBuilder Pipeline(string value)
            {
                _Pipeline = value;
                return this;
            }

            /// <summary>
            /// Sets value for QueueItemImpl.QueuedTime property.
            /// </summary>
            /// <param name="value">QueuedTime</param>
            public QueueItemImplBuilder QueuedTime(int? value)
            {
                _QueuedTime = value;
                return this;
            }


            /// <summary>
            /// Builds instance of QueueItemImpl.
            /// </summary>
            /// <returns>QueueItemImpl</returns>
            public QueueItemImpl Build()
            {
                Validate();
                return new QueueItemImpl(
                    Class: _Class,
                    ExpectedBuildNumber: _ExpectedBuildNumber,
                    Id: _Id,
                    Pipeline: _Pipeline,
                    QueuedTime: _QueuedTime
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}