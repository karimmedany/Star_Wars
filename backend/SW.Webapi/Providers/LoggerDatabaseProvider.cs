
using BC.CommonModule.Common.Abstracts;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace SW.Webapi
{
    public class LoggerDatabaseProvider : ILoggerProvider
    {

        private readonly BCLoggerConfiguration _config;
        private readonly ConcurrentDictionary<string, BCLogger> _loggers = new ConcurrentDictionary<string, BCLogger>();
        private readonly CustomAppSetting _customAppSetting;
        private readonly ICustomAPIClient _customAPIClient;

        public LoggerDatabaseProvider(BCLoggerConfiguration config, CustomAppSetting customAppSetting, ICustomAPIClient customAPIClient)
        {
            _config = config;
            _customAppSetting = customAppSetting;
            _customAPIClient = customAPIClient;
        }

        public ILogger CreateLogger(string categoryName)
        {
            return _loggers.GetOrAdd(categoryName, name => new BCLogger(name, _config, _customAppSetting,_customAPIClient));
        }

        public void Dispose()
        {
            _loggers.Clear();

        }

    }
    public class BCLoggerConfiguration
    {
        public BCLoggerConfiguration()
        {
            LogLevel = new List<LogLevel>();
            LogLevel.Add(Microsoft.Extensions.Logging.LogLevel.Error);
            LogLevel.Add(Microsoft.Extensions.Logging.LogLevel.Critical);
            LogLevel.Add(Microsoft.Extensions.Logging.LogLevel.Trace);


            EventIds = new List<EventId>();
            EventIds.Add(13); // application error
            EventIds.Add(0);

        }
        public List<LogLevel> LogLevel { get; set; }

        public List<EventId> EventIds { get; set; }

    }

    public class BCLogger : ILogger
    {
        private readonly string _name;
        private readonly BCLoggerConfiguration _config;
        private readonly CustomAppSetting _customAppSettings;
        private readonly ICustomAPIClient _apiClient;

        public BCLogger(string name, BCLoggerConfiguration config, CustomAppSetting customAppSettings,ICustomAPIClient apiClient)
        {
            _name = name;
            _config = config;
            _customAppSettings = customAppSettings;
            _apiClient = apiClient;
        }

        public IDisposable BeginScope<TState>(TState state)
        {
            return null;
        }

        public bool IsEnabled(LogLevel logLevel)
        {
            bool result = false;
            var selected = _config.LogLevel.Find(i => i == logLevel);
            if (selected == logLevel)
                result = true;
            return result;
        }

        public async void Log<TState>(LogLevel logLevel, EventId eventId, TState state, Exception exception, Func<TState, Exception, string> formatter)
        {
            if (!IsEnabled(logLevel))
            {
                return;
            }

            if (_config.EventIds.Contains(eventId.Id))
            {



                // send message to certain log with the exception issue
                var requestData = "";
                string json = JsonConvert.SerializeObject(requestData);



            }


        }

    }

    public class LogRequest
    {
        public string appId { get; set; }
        public string categoryName { get; set; }
        public string eventId { get; set; }
        public string eventName { get; set; }
        public string info { get; set; }
        public string innerExceptionMessage { get; set; }
        public string innerExceptionStackTrace { get; set; }
        public string logLevel { get; set; }
        public string message { get; set; }
        public string stackTrace { get; set; }
        public string user { get; set; }
    }

}