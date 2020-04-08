# Bastion

## What we will cover

- What is a Bastion architecture?
- How can we set it up with Docker?

## What we won't cover

- What Docker is
- What Docker compose is

## Notes

I was inspired by a great article on proper use of Secure shell (ssh).
I decided to setup the Bastion architecture in the article locally.
In this video I will cover what I learned.

The article can be found [here](https://gravitational.com/blog/how-to-ssh-properly/).

### What is a Bastion host?

A Bastion host is a computer on a network that is designed to be a secure gateway.
The internal network can then trust that the user can be trusted.

The internal network still needs to have basic security.
If an attacker gets by the Bastion host the attacker could compromise the entire network.

You can read more about Bastion hosts [here](https://en.wikipedia.org/wiki/Bastion_host).

### ssh

ssh is considered by most as the standard way to connect to remote environments.

You can read more about ssh [here](https://www.ssh.com/ssh/command/).

The following is what we need to look at to get our ssh server setup ready:

- sshd_config
- ssh certificate
- ssh known_hosts

### Google authenticator

Adding 2-factor authentication to our Bastion host adds yet another layer of security.

In order to use the Google authentication library we will need to update our sshd PAM config.

#### PAM

> Linux-PAM (short for Pluggable Authentication Modules which evolved from the Unix-PAM architecture) is a powerful suite of shared libraries used to dynamically authenticate a user to applications (or services) in a Linux system. - [1]

You can read more about 2-factor authentication [here](https://en.wikipedia.org/wiki/Multi-factor_authentication).

The Google authenticator app can be found [here](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en).

The Google authenticator CLI can be found [here](https://github.com/google/google-authenticator-libpam/blob/master/man/google-authenticator.1.md).

### References

[1] https://www.tecmint.com/configure-pam-in-centos-ubuntu-linux/
