# create hash table of data (key = row index, value = array of values)

soybean_data = {
   1 => ['april','may','june','july','august','september','october'],
   2 => ['normal','lt-normal'],
   3 => ['lt-norm','norm','gt-norm'],
   4 => ['lt-norm','norm','gt-norm'],
   5 => ['yes','no'],
   6 => ['diff-lst-year','same-lst-yr','same-lst-two-yr','same-lst-sev-yrs'],
   7 => ['scattered','low-areas','upper-areas','whole-field'],
   8 => ['minor','pot-severe','severe'],
   9 => ['none','fungicide','other'],
  10 => ['90-100%','80-89%','lt-80%'],
  11 => ['norm','abnorm'],
  12 => ['norm','abnor'],
  13 => ['absent','yellow-halos','no-yellow-halos'],
  14 => ['w-s-marg','no-w-s-marg','dna'],
  15 => ['lt-1/8','gt-1/8','dna'],
  16 => ['absent','present'],
  17 => ['absent','present'],
  18 => ['absent','upper-surf','lower-surf'],
  19 => ['norm','abnorm'],
  20 => ['yes','no'],
  21 => ['absent','below-soil','above-soil','above-sec-nde'],
  22 => ['dna','brown','dk-brown-blk','tan'],
  23 => ['absent','present'],
  24 => ['absent','firm-and-dry','watery'],
  25 => ['absent','present'],
  26 => ['none','brown','black'],
  27 => ['absent','present'],
  28 => ['norm','diseased','few-present','dna'],
  29 => ['absent','colored','brown-w/blk-specks','distort','dna'],
  30 => ['norm','abnorm'],
  31 => ['absent','present'],
  32 => ['absent','present'],
  33 => ['norm','lt-norm'],
  34 => ['absent','present'],
  35 => ['norm','rotted','galls-cysts']
}

# import data

# pass data into SEED IMPORT CLASS?

# loop over each line
# loop over each item (each with index) separated by comma
# first value = class
# then each index corresponds to hash table
# then number in value corresponds to index of the array in the hash
# next if value = '?' (which means it will = nil)

