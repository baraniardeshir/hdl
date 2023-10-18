.. _ad9783_ebz_hdl:

AD9783-EBZ HDL project
===============================================================================

Overview
-------------------------------------------------------------------------------

The :part:`AD9783` includes pin-compatible, high dynamic range, dual
digital-to-analog converters (DACs) with 16-bit resolution, and sample rates of
up to 500 MSPS.

The device includes specific features for direct conversion transmit
applications, including gain and offset compensation, interfacing seamlessly
with analog quadrature modulators.

The :part:`EVAL-AD9783` board is connected to the FPGA carrier through
:part:`AD-DAC-FMC`-ADP interposer board.

Supported boards
-------------------------------------------------------------------------------

-  :part:`EVAL-AD9783`

Supported devices
-------------------------------------------------------------------------------

-  :part:`AD9780`
-  :part:`AD9781`
-  :part:`AD9783`

Supported carriers
-------------------------------------------------------------------------------

-  :xilinx:`ZCU102` on FMC HPC0 slot

Block design
-------------------------------------------------------------------------------

Block diagram
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The data path and clock domains are depicted in the below diagram:

.. image:: ../images/ad9783_zcu102_block_diagram.svg
   :width: 800
   :align: center
   :alt: AD9783-EBZ/ZCU102 block diagram

Clock scheme
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  External clock source connected to J1 (CLOCK IN)
-  For maximum performance, give a 500 MHz clock

To make the connection between the :part:`EVAL-AD9783` evaluation board and
the carrier using SPI, some hardware changes must be done to the evaluation
board. These are presented in detail in the **Connections and hardware changes**
section.

SPI connections
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For the evaluation board to communicate through SPI with the carrier, some
hardware changes must be done, which are explained in the system level
documentation.

.. list-table::
   :widths: 25 25 25 25
   :header-rows: 1

   * - SPI type
     - SPI manager instance
     - SPI subordinate
     - CS nb
   * - PS
     - SPI 0
     - AD9783
     - 0

CPU/Memory interconnects addresses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

============== ==========
Instance       Address
============== ==========
axi_ad9783     0x74200000
axi_ad9783_dma 0x7C420000
============== ==========

Interrupts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Below are the Programmable Logic interrupts used in this project.

============== === ============ =============
Instance name  HDL Linux ZynqMP Actual ZynqMP
============== === ============ =============
axi_ad9783_dma 12  108          140
============== === ============ =============

Building the HDL project
-------------------------------------------------------------------------------

The design is built upon ADI's generic HDL reference design framework.
ADI does not distribute the bit/elf files of these projects so they
must be built from the sources available :git-hdl:`here <master:/>`. To get
the source you must
`clone <https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository>`__
the HDL repository, and then build the project as follows:

**Linux/Cygwin/WSL**

.. code-block::

   user@analog:~$ cd hdl/projects/ad9783_ebz/zcu102
   user@analog:~/hdl/projects/ad9783_ebz/zcu102$ make

A more comprehensive build guide can be found in the :ref:`build_hdl` user guide.

Software considerations
-------------------------------------------------------------------------------

The SPI communication is changed because of hardware modifications, so the
connection looks like this:

|ad9783_zcu102_spi_pmod.svg|

Resources
-------------------------------------------------------------------------------

Systems related
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Here you can find the quick start guides available for these evaluation boards:

.. list-table::
   :widths: 20 10 20 20 20 10
   :header-rows: 1

   * - Evaluation board
     - Zynq-7000
     - Zynq UltraScale+ MP
     - Microblaze
     - Versal
     - Arria 10
   * - AD9783-EBZ
     - ---
     - :dokuwiki:`[Wiki] ZCU102 <resources/fpga/xilinx/interposer/ad9783>`
     - ---
     - ---
     - ---

Hardware related
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Product datasheets:

   -  :part:`AD9780`
   -  :part:`AD9781`
   -  :part:`AD9783`
   -  :part:`EVAL-AD9783`
   -  :part:`AD-DAC-FMC`-ADP

HDL related
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  :git-hdl:`AD9783_EBZ HDL project source code <master:projects/ad9783_ebz>`

.. list-table::
   :widths: 30 35 35
   :header-rows: 1

   * - IP name
     - Source code link
     - Documentation link
   * - AXI_AD9783
     - :git-hdl:`library/axi_ad9783 <master:library/axi_ad9783>`
     - :dokuwiki:`[Wiki] <resources/fpga/docs/axi_ad9783>`
   * - AXI_DMAC
     - :git-hdl:`library/axi_dmac <master:library/axi_dmac>`
     - :ref:`here <axi_dmac>`
   * - AXI_SYSID
     - :git-hdl:`library/axi_sysid <master:library/axi_sysid>`
     - :dokuwiki:`[Wiki] <resources/fpga/docs/axi_sysid>`
   * - SYSID_ROM
     - :git-hdl:`library/sysid_rom <master:library/sysid_rom>`
     - :dokuwiki:`[Wiki] <resources/fpga/docs/axi_sysid>`
   * - UTIL_UPACK2
     - :git-hdl:`library/util_pack/util_upack2 <master:library/util_pack/util_upack2>`
     - :dokuwiki:`[Wiki] <resources/fpga/docs/util_upack>`

Software related
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  :git-linux:`Linux device tree zynqmp-zcu102-rev10-ad9783.dts <master:arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev10-ad9783.dts>`
-  :git-linux:`Linux driver ad9783.c <master:drivers/iio/frequency>`

.. include:: ../common/more_information.rst

.. include:: ../common/support.rst

.. |ad9783_zcu102_spi_pmod.svg| image:: ../images/ad9783_zcu102_spi_pmod.svg
   :width: 600
   :align: top
   :alt: AD9783-EBZ/ZCU102 SPI Pmod connection
