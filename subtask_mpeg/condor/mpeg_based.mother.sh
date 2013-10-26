#!/bin/bash

matlab -r "[tp, tn, fp, fn, precision, recall, f1score] = mpeg_based('FILENAME', NUM_FRAMES, WIDTH, HEIGHT, BLOCK_WIDTH, BLOCK_HEIGHT, THRESH, OPT_DECT, OPT_DELTA, [OPT_FRAMES], [OPT_BLOCKS], OPT_SWAP_MAT); fh = fopen(['/u/yichao/anomaly_compression/condor_data/subtask_mpeg/condor/output/mpeg_based.FILENAME.NUM_FRAMES.WIDTH.HEIGHT.BLOCK_WIDTH.BLOCK_HEIGHT.THRESH.OPT_DECT.OPT_DELTA.OPT_FRAME_BLOCK.OPT_SWAP_MAT.txt'], 'w'); fprintf(fh, '%d, %d, %d, %d, %f, %f, %f\n', tp, tn, fp, fn, precision, recall, f1score); fclose(fh); exit;"