# define [
#     'dou'
#     'jquery'
#     'infopik'
# ], (
#     dou
#     $
#     infopik
# ) ->
    
app = infopik.app
    application_spec: infopik.spec.painter
    container: 'painter'
    width: $('#painter').width()
    height: 400
