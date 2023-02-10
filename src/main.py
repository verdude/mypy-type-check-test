from config import Config

def function() -> Config:
    print(Config.some_attribute)

    config = Config()
    print(config)

    return config

if __name__ == "__main__":
    function()
