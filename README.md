# terminal-proxy
优雅的一键启用/停用终端代理，反 复 横 跳。



## Usage


1. **下载**

   ```shell
   cd ~ && curl -LJO https://raw.githubusercontent.com/Ningxxxl/terminal-proxy/main/terminal_proxy_switch.sh && chmod +x terminal_proxy_switch.sh
   ```

2. **创建别名**

   加入 `~/.zshrc ` 或者 `~/.bashrc` 中。

   ```shell
   alias terminal-proxy='. ~/terminal_proxy_switch.sh'
   ```

   

3. **修改配置**

   修改 `terminal_proxy_switch.sh` 中 `proxy_on` 里的 `http_proxy`：

   ```shell
   # ！！！！ CHANGE THIS ！！！！
   # 默认是http://127.0.0.1:8889
   http_proxy=_CHANGE_THIS_
   ```
   
   修改完成之后，重启终端。

   

4. **一键启用/停用**

   ***推荐的方式：***

   直接敲入 **`terminal-proxy`** 即可。
   
   （在启动和停止状态直接反复横跳。）

   

   *当然也还有另外两种方式：*

   ```shell
   # 启动
   terminal-proxy -on
   # 停止
   terminal-proxy -off
   ```

   

5. **检查IP信息（查看代理是否生效）**

   ```shell
   terminal-proxy -i
   ```

   


