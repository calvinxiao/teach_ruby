# day two

![](https://www.cisco.com/c/en/us/products/servers-unified-computing/ucs-c-series-rack-servers/index/_jcr_content/Grid/subcategory_atl/layout-subcategory-atl/anchor_info/image.img.jpg/1499300097215.jpg)

> Rack specifies a standard interface for Ruby webservers.

```
rackup file.ru
```


- mini.ru
- env.ru
- first.ru
- body.ru
- file.ru

一般讲 rack 的讲到这里就结束了

看个例子 https://github.com/rack/rack/blob/master/lib/rack/config.rb

```Ruby
# frozen_string_literal: true

module Rack
  # Rack::Config modifies the environment using the block given during
  # initialization.
  #
  # Example:
  #     use Rack::Config do |env|
  #       env['my-key'] = 'some-value'
  #     end
  class Config
    def initialize(app, &block)
      @app = app
      @block = block
    end

    def call(env)
      @block.call(env)
      @app.call(env)
    end
  end
end
```

例子
- yeeshop #before @s_maxage 缓存设置
- redis_session

# 总结

其实看懂这个就可以了 https://www.rubydoc.info/github/rack/rack/file/SPEC

 # 练习
 学习 官方 rack 中间件 https://github.com/rack/rack/tree/master/lib/rack
