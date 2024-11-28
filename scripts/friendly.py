class __quit_workaround__:
    def __repr__(self): raise SystemExit

exit = quit = __quit_workaround__()
