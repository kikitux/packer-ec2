# nginx64

This repository is based on the following repository:
- https://github.com/nielsabels/packer-xenial64
Based on the following repository:
- https://github.com/cbednarski/packer-ubuntu

# Purpose

This repository attempts to store the minimum amount of code that is required to create a:
- Ubuntu Xenial64 box
- with standard nginx
- using Packer
- for AWS EC2

# How to build

## Prerequisites

### rbenv

On MacOS:
```
brew install rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
```

On Linux:
> Note:
> On Graphical environments, when you open a shell, sometimes `~/.bash_profile` doesn't get loaded
> You may need to `source ~/.bash_profile` manually or use `~/.bashrc`

```
apt update
apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
wget -q https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer -O- | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
```

### libraries

```
rbenv install 2.4.6
rbenv local 2.4.6
rbenv versions
gem install bundler
bundle install
```

### AWS CLI utility

You need to set up the AWS CLI utility for packer to be able to interact with AWS. [Check this article out.](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

Make sure you have set up your credentials either in ~/.aws/credentials or as an environment variable as described in the previous link.

In order to test your AWS CLI setup, run the following command and observe the output (should be similar):

```
user@localhost ~ $ aws iam get-user
{
    "User": {
        "Path": "/",
        "UserName": "YOUR_USERNAME",
        "UserId": "XXXXXXXXXXXXXXXXXXXX",
        "Arn": "arn:aws:iam::00000000000000:user/YOUR_USERNAME",
        "CreateDate": "2019-05-10T22:10:20Z",
        "PasswordLastUsed": "2019-06-03T12:34:06Z"
    }
}
```

## Build

    make


# How to test

    make kitchen
    
