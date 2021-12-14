class __BetterQuitHelperManager__:
    _instance = None
    def __repr__(self): raise SystemExit
    def __new__(cls):
        if not __BetterQuitHelperManager__._instance:
            __BetterQuitHelperManager__._instance = True
            return super(__BetterQuitHelperManager__, cls).__new__(cls)
        else: return _instance

exit = quit = __BetterQuitHelperManager__()
