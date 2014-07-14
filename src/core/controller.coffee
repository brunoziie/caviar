###*
 * Controller superclass.
 * This class will be used like a basic implementation that all controllers must to be
 * @module SFG.Controller
 * @author Bruno Ziiê <http://github.com/brunoziie/>
 *###
define 'Controller', ['LayoutLoader', 'IntentManager', 'IntentHistory', 'ScopedEvents'], (LayoutLoader, IntentManager, IntentHistory, ScopedEvents) ->

    Controller =
        ###*
         * Transition effect used by controller
         * @type {String}
         *###
        transition: null

        ###*
         * Controller name
         * @type {String}
         *###
        name: null

        ###*
         * Vue.js instance object
         * @type {String}
         *###
        vue: null

        ###*
         * Zepto object from controller layout
         * @type {Object}
         *###
        view: null

        ###*
         * Store data used by controller
         * @type {Object}
         *###
        data: {}

        ###*
         * Init controller's settings
         * @param {Object} intentData Object with data from intent
         * @return {void}
         *###
        initialize: () ->

        ###*
         * Destroy controller's resources
         * @return {void}
         *###
        destroy: () ->
            @data = {};

        ###*
         * Get a data stored on controller instance
         * @param  {String} key
         *###
        get: (key) ->
            @data[key];

        ###*
         * Add/Update a data on controller
         * @param {String} key
         * @param {Mixed} value
         *###
        set: (key, value) ->
            @data[key] = value;

        ###*
         * Method executed when an intent sends result
         * @param {Object} Sent data
         *###
        onResultHandler: (data) ->

        ###*
         * Defines onResultHandler callback
         * @param {Function}
         *###
        waitForResult: (callback) ->
            @onResultHandler = callback

        ###*
         * Alias to starts an intent
         * @param {Intent}
         *###
        startIntent: (intent) ->
            IntentManager.start intent;
