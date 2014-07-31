# My Vagrant/Docker Workflow

Every machine has a `Vagrantfile` and `Dockerfile` associated with it. 

# install the nfs-capable boot2docker or coreos VM (for OSX)

```bash
cd boot2docker # or cd coreos
vagrant up
```

# For the base machine, the following has to be executed first

```bash
cd mybase
./generate_dockerfile
```

# For `mybase` and any other docker-based machine

```bash
cd machinename
../generate_vagrantfile
vagrant up --provider=docker
```

The above creates an image from the `Dockerfile` as long as the 
`d.build_dir` lines are uncommented from the `Vagrantfile`. For 
example:

```ruby
Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
    d.build_dir = "."
    d.build_args = ["--tag=repo/image:tag"]
  end
end
```

The above specifies that an image named `repo/image` with tag `tag` 
will be created out of the `Dockerfile` in the directory. See 
[here](https://docs.vagrantup.com/v2/docker/basics.html) for more.
