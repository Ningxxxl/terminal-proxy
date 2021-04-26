# terminal-proxy
一键启用/停用终端代理，反 复 横 跳。



## Usage
1. **创建别名**

   加入 `~/.zshrc ` 或者 `~/.bash_profile` 中

   ```
   alias terminal-proxy='. /users/ningxy/terminal_proxy_switch.sh'
   ```

   

2. **一键启用/停用**

   ***推荐的方式：***

   直接敲入 **`terminal-proxy`** 即可在启动和停止状态直接反复横跳。

   

   *当然也还有另外两种方式：*

   ```shell
   # 启动
   terminal-proxy -on
   # 停止
   terminal-proxy -off
   ```

   

3. **检查IP信息（查看代理是否生效）**

   ```shell
   terminal-proxy -i
   ```

   


