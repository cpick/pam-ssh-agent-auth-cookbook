pam-ssh-agent-auth Cookbook
===========================
Install [pam_ssh_agent_auth](http://pamsshagentauth.sf.net/) from a [launchpad.net ppa](https://launchpad.net/~cpick/+archive/pam-ssh-agent-auth) and enable it for sudo on Ubuntu 12.04 (precise) machines.

Patches (especially to support other architectures/OS vesrions) very welcome.

Requirements
------------

#### packages
- `apt` - used to add the ppa.

Attributes
----------

#### pam-ssh-agent-auth::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>['pam_ssh_agent_auth']['keys']</tt></td>
    <td>Array</td>
    <td>Authorized keys to accept when sudo is authenticating via the ssh-agent.</td>
  </tr>
</table>

Usage
-----
#### pam-ssh-agent-auth::default
Just set your authorized keys and include `pam-ssh-agent-auth` in your node's `run_list`:

```json
{
  "pam_ssh_agent_auth": {
    "keys": [
      "ssh-rsa ...",
      "ssh-rsa ..."
    ]
  },
  "run_list": [
    "recipe[pam-ssh-agent-auth]"
  ]
}
```

Contributing
------------
Please use standard Github issues/pull requests.

License and Authors
-------------------
Authors: Chris Pick
