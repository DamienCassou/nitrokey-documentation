Container
=========

For the NetHSM container images are available for testing and production.

The container images are distributed as OCI images.
They can be run locally with a compatible executor, e.g. Docker or Podman.

Compared to the NetHSM hardware the following functions are not implemented at software container's REST API:

* Network configuration
* Factory reset
* Reboot
* Software update

Refer to the following chapters to learn more about the respective differences.

Test image
----------

The image can be obtained from `Docker Hub <https://hub.docker.com/r/nitrokey/nethsm>`_.

.. warning::

   Do not use the test image under any circumstances in production environments.

Tagging policy
^^^^^^^^^^^^^^

The images in the repository are tagged with the Git commit hash from the main branch of the `repository <https://github.com/nitrokey/nethsm>`__.
The latest image is tagged with ``testing``.

.. _test-image-configuration:

Configuration
^^^^^^^^^^^^^

The image can be configured with environment variables.
The table below lists the recognized environment variables.

+----------------------+--------------------------------------+
| Environment variable | Description                          |
+======================+======================================+
| ``DEBUG_LOG``        | Enables extended logging for NetHSM. |
+----------------------+--------------------------------------+

Usage
^^^^^

The container can be executed as follows.

.. tabs::
   .. tab:: Docker
      .. code-block:: bash

         $ docker run --rm -ti -p 8443:8443 docker.io/nitrokey/nethsm:testing

   .. tab:: Podman
      .. code-block:: bash

         $ podman run --rm -ti -p 8443:8443 docker.io/nitrokey/nethsm:testing

This will run NetHSM as a Unix process inside the container and expose the REST API on the port `8443` via the HTTPS protocol.

.. important::
   The container uses a self-signed TLS certificate.
   Make sure to use the correct connection settings to establish a connection.
   Please refer to chapter `NetHSM introduction <index.html>`__ to learn more.

Production image
----------------

The image can be obtained from `Nitrokey NetHSM registry <https://registry.git.nitrokey.com/distribution/nethsm>`_.

.. note::

   The NetHSM production container is a product for paying customers.

.. warning::

   The security of the NetHSM software container strongly depends on the platform's security.
   A compromised platform could easily compromise a NetHSM software container it executes.
   In addition the TRNG is not existent so that the entropy used and provided by the NetHSM depends on the platform's entropy. 

Tagging policy
^^^^^^^^^^^^^^

The images in the repository are tagged with the Git commit hash and the version of the release.
The latest image is tagged with ``latest``.

.. _production-image-configuration:

Configuration
^^^^^^^^^^^^^

The container can be configured with environment variables.
Secrets should be passed in with the secrets feature of Docker or Podman.
The table below lists the recognized environment variables.

+----------------------+----------------------------------------------------------------------------------------------------+
| Environment variable | Description                                                                                        |
+======================+====================================================================================================+
| ``DEBUG_LOG``        | Enables extended logging for NetHSM.                                                               |
+----------------------+----------------------------------------------------------------------------------------------------+
| ``UNLOCKPW``         | A set unlock passphrase automatically unlocks the container during start.                          |
+----------------------+----------------------------------------------------------------------------------------------------+
| ``MODE``             | The mode accepts the values `unix` or `unikernel`, defaults to `unix`.                             |
+----------------------+----------------------------------------------------------------------------------------------------+
| ``ETCD_HOST``        | The address of the etcd host.                                                                      |
+----------------------+----------------------------------------------------------------------------------------------------+
| ``ETCD_PORT``        | The port running the etcd service, defaults to `2379`.                                             |
+----------------------+----------------------------------------------------------------------------------------------------+
| ``ETCD_CA_CERT``     | The path to the certificate of the CA (Certificate Authority) which signed the client certificate. |
+----------------------+----------------------------------------------------------------------------------------------------+
| ``ETCD_CLIENT_CERT`` | The path to the certificate for the client authentication.                                         |
+----------------------+----------------------------------------------------------------------------------------------------+
| ``ETCD_CLIENT_KEY``  | The path to the secret key for the client authentication.                                          |
+----------------------+----------------------------------------------------------------------------------------------------+


Modes of operation
^^^^^^^^^^^^^^^^^^

The image can be run in two modes of operation, i.e. Unix process or unikernel.

The Unix process mode runs NetHSM as a process on top of the operating system.

The unikernel mode runs NetHSM as a guest in a KVM based virtual machine and provides strong separation from the host operating system.
This mode is only available on Linux and requires access to the ``/dev/tun`` and ``/dev/kvm`` device nodes and the ``NET_ADMIN`` capability.

The mode can be set with the environment variable ``MODE``.
Please refer to the chapter `Configuration <container.html#production-image-configuration>`__ to learn more.

Usage
^^^^^

The production container supports two modes of operation. Please refer to chapter `Modes of operation <container.html#Modes of operation>`__ to learn more.
Refer to the following chapters to learn how to run the container with the provided compose files or with the _run_ command.

Unix mode
~~~~~~~~~

You can obtain a provided compose file `here <https://raw.githubusercontent.com/Nitrokey/nethsm/refs/heads/main/src/container/alpine/compose-unix.yaml>`__.
Make sure you have the necessary files for the secrets, mentioned in the compose file, available.

To run the container without the compose file you need to provide an external etcd yourself.
The recommended container image for etcd you can find `here <https://quay.io/coreos/etcd>`__.
Make sure to pass the configuration options, as described in chapter `Configuration <container.html#production-image-configuration>`__.

The container can be executed as follows.

.. tabs::
   .. tab:: Docker
      .. code-block:: bash

         $ docker run -ti --rm -p 8443:8443 registry.git.nitrokey.com/distribution/nethsm:latest

   .. tab:: Podman
      .. code-block:: bash

         $ podman run -ti --rm -p 8443:8443 registry.git.nitrokey.com/distribution/nethsm:latest

This will run NetHSM as a Unix process inside the container and expose the REST API on the port `8443` via the HTTPS protocol.

.. important::
   The container uses a self-signed TLS certificate.
   Make sure to use the correct connection settings to establish a connection.
   Please refer to chapter `NetHSM introduction <index.html>`__ to learn more.

Unikernel mode
~~~~~~~~~~~~~~

You can obtain a provided compose file `here <https://raw.githubusercontent.com/Nitrokey/nethsm/refs/heads/main/src/container/alpine/compose-unikernel.yaml>`__.
Make sure you have the necessary files for the secrets, mentioned in the compose file, available.

To run the container without the compose file you need to provide an external etcd yourself.
The recommended container image for etcd you can find `here <https://quay.io/coreos/etcd>`__.
Make sure to pass the configuration options, as described in chapter `Configuration <container.html#production-image-configuration>`__.

The container can be executed as follows.

.. tabs::
   .. tab:: Docker
      .. code-block:: bash

         $ docker run -ti --rm -p 8443:8443 --device /dev/net/tun --device /dev/kvm --cap-add=NET_ADMIN -e "MODE=unikernel" registry.git.nitrokey.com/distribution/nethsm:latest

   .. tab:: Podman
      .. code-block:: bash

         $ podman run -ti --rm -p 8443:8443 --device /dev/net/tun --device /dev/kvm --cap-add=NET_ADMIN -e "MODE=unikernel" registry.git.nitrokey.com/distribution/nethsm:latest

This will run NetHSM as a unikernel inside a KVM virtual machine.
The container will expose the REST API, via the HTTPS protocol, on the interface `tap200` with the IP address `192.168.1.100` and port `8443`.

.. important::
   The container uses a self-signed TLS certificate.
   Make sure to use the correct connection settings to establish a connection.
   Please refer to chapter `NetHSM introduction <index.html>`__ to learn more.
