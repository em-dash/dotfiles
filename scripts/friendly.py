class __quit_workaround__:
    _instance = None
    def __repr__(self): raise SystemExit
    def __new__(cls):
        if not __quit_workaround__._instance:
            __quit_workaround__._instance = True
            return super(__quit_workaround__, cls).__new__(cls)
        else: return _instance

exit = quit = __quit_workaround__()
