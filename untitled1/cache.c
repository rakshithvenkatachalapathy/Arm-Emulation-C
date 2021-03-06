/* cache.c - Cache simulator for armemu */

#include <stdio.h>
#include <stdlib.h>

#include "cache.h"
#include "utils.h"

//set_associative

/* Initialize cache_direct_mapped */
void cache_direct_mapped_init(struct cache_direct_mapped *dm, int size) {
    struct cache_entry *cache_array;

    /* Allocte size number of cache entries for cache_array */
    cache_array = (struct cache_entry *) \
        malloc_helper(sizeof(struct cache_entry) * size,
                      "cache_direct_mapped_init() : cache_entry");
    dm->cache_array = cache_array;
    dm->size = size;
    dm->refs = 0;
    dm->hits = 0;
    dm->misses = 0;
}

void cache_direct_mapped_free(struct cache_direct_mapped *dm) {
    free(dm->cache_array);
}

/* Cache Direct Mapped Lookup */
unsigned int cache_lookup_direct_mapped(struct cache_direct_mapped *dm,
                                        unsigned int addr) {
    unsigned int tag;
    unsigned int index;
    /* The index_mask is used extract the index number from the addr */
    unsigned int index_mask;
    /* The index_bits is the number of bits need for the index, this is
     * used to extract the tag from the addr.
     */
    unsigned int index_bits = 0;
    unsigned int dm_size = dm->size;
    struct cache_entry *ce;

    /* Extract the index */
    index_mask = (dm->size) - 1;
    index = (addr >> 2) & index_mask;

    /* Simple log_2(n) calculation */
    while (dm_size > 1) {
        index_bits += 1;
        dm_size >>= 1;
    }

    /* Extract the tag */
    tag = addr >> (index_bits + 2);

    /* Lookup the cache_entry */
    ce = &dm->cache_array[index];

    /* Determine if addr is in the cache or not. */
    dm->refs += 1;
    if (ce->valid && (ce->tag == tag)) {
        /* hit */
        dm->hits += 1;
    } else {
        /* miss */
        dm->misses += 1;
        ce->valid = 1;
        ce->tag = tag;
        ce->data = *((unsigned int *) addr);
    }
    return ce->data;
}


/* Cache deallocation */
void cache_state_free(struct cache_state *cstate) {
    int i;

    for (i = 0; i < cstate->dm_count; i++) {
        cache_direct_mapped_free(&cstate->dm_array[i]);
    }
    free(cstate->dm_array);
}
//full_associative

/* Cache Lookup */
unsigned int cache_lookup(struct cache_state *cstate, unsigned int addr) {
    unsigned int data;

    /* This just does a lookup on the first direct mapped cache.
     * You will need to add lookups for the other direct mapped caches
     * and the other cache types */
    //data = cache_lookup_direct_mapped(&cstate->dm_array[0], addr);
    //for (int i = 0; i < 4; i++) {
    // data = cache_lookup_direct_mapped(&cstate->dm_array[i], addr);
    //}
    data = cache_lookup_direct_mapped(&cstate->dm_array[0], addr);
    data = cache_lookup_direct_mapped(&cstate->dm_array[1], addr);
    data = cache_lookup_direct_mapped(&cstate->dm_array[2], addr);
    data = cache_lookup_direct_mapped(&cstate->dm_array[3], addr);

    /* Put sanity check here */
    return data;
}