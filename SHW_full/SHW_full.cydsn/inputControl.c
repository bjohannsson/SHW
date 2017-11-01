/* ========================================
 *
 * SHW - Visible light Communication Controller
 * Bjarki Johannsson 2017
 * Open Source
 *
 *
 * ========================================
*/

#include "inputcontrol.h"

void INIT_INPUT_CONTROL()
{
	// Setup DMA for thresholds
	DMA_AVG_Chan = DMA_AVG_DmaInitialize(DMA_AVG_BYTES_PER_BURST, DMA_AVG_REQUEST_PER_BURST, 
	    HI16(DMA_AVG_SRC_BASE), HI16(DMA_AVG_DST_BASE));
	DMA_AVG_TD[0] = CyDmaTdAllocate();

	CyDmaTdSetConfiguration(DMA_AVG_TD[0], 2, CY_DMA_DISABLE_TD, DMA_AVG__TD_TERMOUT_EN);
	CyDmaTdSetAddress(DMA_AVG_TD[0], LO16((uint32)ADC_SAR_SAR_WRK0_PTR), LO16((uint32)&avgCurrSample));
	CyDmaChSetInitialTd(DMA_AVG_Chan, DMA_AVG_TD[0]);
	CyDmaChEnable(DMA_AVG_Chan, 1);
	
	
	// Start DACs and comparators
	DAC_SLOW_Start();
	DAC_FAST_Start();
    
	COMP_SLOW_Start();
	COMP_SLOW_Enable();
	COMP_FAST_Start();
	COMP_FAST_Enable();


	// Initialize to zero
	thsi = 0;
	thSlowSum = 0; thSlowMean = 0; thSlowStd = 0; thSlowStdCurr = 0;
//	flag_avg_isr = false;
	thFlag = false;
	
	int i;
	for (i=0; i<N_TH_SLOW; i++) {
		thSlowBuffer[i] = 0;
	}
	for (i=0; i<N_TH_FAST; i++) {
		thFastBuffer[i] = 0;
	}

	// Setup ISR
	ISR_DMA_AVG_StartEx(ISR_AVG_h);
	ISR_DMA_AVG_Enable();
}

/* Calculate and update thresholds */
void calculateTh()
{
	// Update average
	thSlowSum -= thSlowBuffer[thsi];
	thSlowBuffer[thsi] = avgCurrSample;
	thSlowSum += thSlowBuffer[thsi];
	thSlowMean = thSlowSum / N_TH_SLOW;
	
	thFastSum -= thFastBuffer[thfi];
	thFastBuffer[thfi] = thSlowBuffer[thsi];
	thFastSum += thFastBuffer[thfi];
	thFastMean = thFastSum / N_TH_FAST;
	
	// Update st. dev.
	thSlowStdSum -= thSlowStdBuffer[thsi];
	thStdTemp = thSlowBuffer[thsi]-thSlowMean;
	thSlowStdCurr = sqrt(thStdTemp*thStdTemp);
	thSlowStdBuffer[thsi] = thSlowStdCurr;
	thSlowStdSum += thSlowStdCurr;
	thSlowStd = thSlowStdSum / N_TH_SLOW;
	
	thFastStdSum -= thFastStdBuffer[thfi];
	thStdTemp = thFastBuffer[thfi]-thFastMean;
	thFastStdCurr = sqrt(thStdTemp*thStdTemp);
	thFastStdBuffer[thfi] = thFastStdCurr;
	thFastStdSum += thFastStdCurr;
	thFastStd = thFastStdSum / N_TH_FAST;
	
	// Calculate threshold value
	thSlowValue = thSlowMean + 2*thSlowStd + 50;
	thFastValue = thFastMean + 2*thFastStd + 50;
	
	// Write to DVDAC
	DAC_SLOW_SetValue(thSlowValue);
	DAC_FAST_SetValue(thFastValue);
	
	// Increment buffer index
	if (++thsi == N_TH_SLOW) thsi = 0;
	if (++thfi == N_TH_FAST) thfi = 0;
	
	thCnt ++;
	// Report to pc?
		
}

/* [] END OF FILE */