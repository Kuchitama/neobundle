neobundle Cookbook
==================
This cookbook install vim and neobundle in your machene.

Requirements
------------

#### vim (Option)
If you have not installed vim in your machine, you can run vim cookbook to install it.
- `vim` - neobundle needs to install.

Attributes
----------

#### neobundle::default require arguments
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['neobundle']['vim_home']</tt></td>
    <td>String</td>
    <td>the path of vim home</td>
    <td><tt>undefined</tt></td>
  </tr>
  <tr>
    <td><tt>['neobundle']['user']</tt></td>
    <td>String</td>
    <td>the user of vim</td>
    <td><tt>undefined</tt></td>
  </tr>
  <tr>
    <td><tt>['neobundle']['group']</tt></td>
    <td>String</td>
    <td>the group of vim</td>
    <td><tt>undefined</tt></td>
  </tr>
</table>

Usage
-----
#### neobundle::default

e.g.
Just include `neobundle` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[neobundle]"
  ],
  "neobundle" : {
    "vim_home" : "/home/<your user name>",
    "user" : "<your user name>",
    "group" : "<your group name>"
  }
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Kuchitama

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
