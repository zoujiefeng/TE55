#ifndef CANTRCV_CFG_INTCODE_
# define CANTRCV_CFG_INTCODE_

// for AR4.2 the RH850 MCAL-SPI is not according agreement to provide Spi_RbSetupEB to link to an AR4.2 compatible Spi_SetupEB function
// Especially for this SPI next line should be used if an SPI-Trcv is configured
#define Spi_RbSetupEB Spi_SetupEB

// timeoutvalue for SPI-Commands. How often is SPI called before giving up
# define CANTRCV_CFG_SPI_RETRIES    1000uL

// define CANTRCV_CFG_STATIC should not be changed
# define CANTRCV_CFG_STATIC static

// adaption to specific SPI commands should be done here
// # define CANTRCV_SPI_TRANSMIT(seq) (Spi_RbTransmit(seq))
//# define CANTRCV_SPI_TRANSMIT(seq) (Spi_AsyncTransmit(seq))
# define CANTRCV_SPI_TRANSMIT(seq) (Spi_SyncTransmit(seq))

// If SPI does not generate the symbolic name of sequence or channel, than the defines can be added here
//# define SPI_SEQUENCE 2
//# define SPI_CHANNEL  2

// adaption to DEM
# define CAN_TRCV_DEM_REPORTERRORSTATUS(EventId, EventStatus) \
do{ \
 if(EventId !=0u)\
 {\
    Dem_ReportErrorStatus(EventId, EventStatus);\
 }\
}while(0)

#endif // CANTRCV_CFG_INTCODE_
