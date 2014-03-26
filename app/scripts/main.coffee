app = infopik.app
    application_spec: infopik.spec.painter
    container: 'painter'
    width: $('#painter').width()
    height: 600

sample = @sample

$(window).resize ->
    console.log('resized', $('#painter').width())
    app.setSize $('#painter').width(), $('#painter').height()

$('#btn_select').click ->
    app.setEditMode('SELECT')
    $(this).addClass('btn-primary')
    $('#btn_move').removeClass('btn-primary')

$('#btn_move').click ->
    app.setEditMode('MOVE')
    $(this).addClass('btn-primary')
    $('#btn_select').removeClass('btn-primary')

$('#btn_move_forward').click ->
    app.moveForward()

$('#btn_move_backward').click ->
    app.moveBackward()

$('#btn_move_to_front').click ->
    app.moveToFront()

$('#btn_move_to_back').click ->
    app.moveToBack()

$('#btn_move_up').click ->
    app.moveDelta
        y: -1

$('#btn_move_down').click ->
    app.moveDelta
        y: 1

$('#btn_move_left').click ->
    app.moveDelta
        x: -1

$('#btn_move_right').click ->
    app.moveDelta
        x: 1

$('#btn_undo').click ->
    app.undo()

$('#btn_redo').click ->
    app.redo()

$('#btn_scale_up').click ->
    app.scaleEnlarge()

$('#btn_scale_down').click ->
    app.scaleReduce()

$('#btn_unload').click ->
    app.setModel(null)

$('#btn_load').click ->
    app.setModel(app.createComponent(sample))

$('#btn_rect').click ->
    component = app.componentFactory.createComponent {
        type: 'rectangle'
        attrs: 
            x: 100
            y: 100
            draggable: true
    } , app
    app.getModel().add component

$('#btn_circle').click ->
    component = app.componentFactory.createComponent
        type: 'circle'
        attrs: 
            x: 100
            y: 100
            draggable: true
    , app 
    app.getModel().add component

$('#btn_ring').click ->
    component = app.componentFactory.createComponent
        type: 'ring'
        attrs: 
            x: 100
            y: 100
            draggable: true
    , app 
    app.getModel().add component

$('#btn_barcode').click ->
    component = app.componentFactory.createComponent
        type: 'barcode'
        attrs: 
            x: 100
            y: 100
            draggable: true
    , app 
    app.getModel().add component

$('#btn_star').click ->
    component = app.componentFactory.createComponent
        type: 'star'
        attrs: 
            x: 100
            y: 100
            draggable: true
    , app 
    app.getModel().add component

$('#btn_group').click ->
    component = app.componentFactory.createComponent
        type: 'group'
        attrs: 
            x: 100
            y: 100
            draggable: true
    , app 
    app.getModel().add component

$('#btn_image').click ->
    component = app.componentFactory.createComponent
        type: 'image'
        attrs: 
            x: 100
            y: 100
            url: 'http://www.baidu.com/img/bdlogo.gif'
            draggable: true
    , app 
    app.getModel().add component

$('#btn_ruler').click ->
    component = app.componentFactory.createComponent
        type: 'ruler'
        attrs: 
            x: 100
            y: 100
            draggable: true
    , app 
    app.getModel().add component

@app = app
