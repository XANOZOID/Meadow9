Red [
    Author: Xano
    Date: 31-Oct-2020
]

S: [
    meta: [ 
        title: "Meadow9" 
        flags: [resize] 
    ]
    editor: [
        fnt-console: [ size: 12 name: "Consolas" ]
    ]
]


context [ 
    init: code: none
    fnt-console: :S/editor/fnt-console
    
    view/flags/no-wait compose [
        title S/meta/title ; size 1400x800'
        button "Run" [ do init/text do code/text ]
        button "Print" [ print [ (do init/text) (do code/text) ] ]
        text "Left: 'init' --> Right: 'code'"
        return 
        
        init: area 400x700 "" font fnt-console
        code: area 800x700 "" font fnt-console

    ] S/meta/flags
]