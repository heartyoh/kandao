app = infopik.app
    application_spec: infopik.spec.painter
    container: 'painter'
    width: $('#painter').width()
    height: 600

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

$('#btn_move_up').click ->
    app.moveUp()

$('#btn_move_down').click ->
    app.moveDown()

$('#btn_move_to_top').click ->
    app.moveToTop()

$('#btn_move_to_bottom').click ->
    app.moveToBottom()

$('#btn_move_undo').click ->
    app.undo()

$('#btn_move_redo').click ->
    app.redo()

model = app.createComponent(@sample)
app.setModel(model)

