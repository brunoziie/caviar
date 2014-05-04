define 'Bootstrap', ['SFG', 'IntentManager', 'Intent'], (SFG, IntentManager, Intent) ->
    Bootstrap =
        ###
        Bootup application
        ###
        bootup: () ->
            this.initializeMenus();
            IntentManager.bindIntentElements();
            IntentManager.start(new Intent('main#main'));

        ###
        Setup sidebar menus
        ###
        initializeMenus: () ->
            options =
                element: document.getElementById('stage'),
                dragger: null,
                disable: 'none',
                addBodyClasses: true,
                hyperextensible: true,
                resistance: 0.5,
                flickThreshold: 20,
                transitionSpeed: 0.3,
                easing: 'ease',
                maxPosition: 266,
                minPosition: -266,
                tapToClose: true,
                touchToDrag: true,
                slideIntent: 40,
                minDragDistance: 5
            SFG.globals.set 'snapper', new Snap(options)