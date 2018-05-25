indexing
protectIndexAccessDuring: aBlock

	^ indexSemaphore critical: aBlock