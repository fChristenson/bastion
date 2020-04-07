# Bastion

## What we will cover

- What is a Bastion architecture?
- How can we set it up with Docker?

## What we won't cover

- What Docker is
- What Docker compose is

## Notes

I was inspired by a great article on propery use of Secure shell(ssh).
I decided to setup a local Bastion architecture.
In this video we will cover what I learned.

The article can be found [here](https://gravitational.com/blog/how-to-ssh-properly/).

### What is a Bastion?

### ssh

ssh is considered by most as the standard way to connect to remote environments.

You can read more about ssh [here](https://www.ssh.com/ssh/command/).

The following is what we need to look at to get our ssh setup ready:

- sshd_config
- ssh certificate
- ssh known_hosts

### Google authenticator

Adding 2-factor authentication to our Bastion adds yet another layer of security.

You can read more about 2-factor authentication [here](https://en.wikipedia.org/wiki/Multi-factor_authentication).

App can be found [here](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en).

CLI can be found [here](https://github.com/google/google-authenticator-libpam/blob/master/man/google-authenticator.1.md).

### PAM
