data_structure = {
  0 => {
    column: 'classification',
    data: [] #data comes from soybean[0]
  },
  1 => {
    column: 'date',
    data:['april', 'may', 'june', 'july', 'august', 'september', 'october']
  },
  2 => {
    column: 'plant_stand',
    data:['normal', 'lt-normal']
  },
  3 => {
    column: 'precip',
    data:['lt-norm', 'norm', 'gt-norm']
  },
  4 => {
    column: 'temp',
    data:['lt-norm', 'norm', 'gt-norm']
  },
  5 => {
    column: 'hail',
    data:['yes', 'no']
  },
  6 => {
    column: 'crop_hist',
    data:['diff-lst-year', 'same-lst-yr', 'same-lst-two-yr', 'same-lst-sev-yrs']
  },
  7 => {
    column: 'area_damaged',
    data:['scattered', 'low-areas', 'upper-areas', 'whole-field']
  },
  8 => {
    column: 'severity',
    data:['minor', 'pot-severe', 'severe']
  },
  9 => {
    column: 'seed_tmt',
    data:['none', 'fungicide', 'other']
  },
  10 => {
    column: 'germination',
    data:['90-100%', '80-89%', 'lt-80%']
  },
  11 => {
    column: 'plant_growth',
    data:['norm', 'abnorm']
  },
  12 => {
    column: 'leaves',
    data:['norm', 'abnor']
  },
  13 => {
    column: 'leafspots_halo',
    data:['absent', 'yellow-halos', 'no-yellow-halos']
  },
  14 => {
    column: 'leafspots_marg',
    data:['w-s-marg', 'no-w-s-marg', 'dna']
  },
  15 => {
    column: 'leafspot_size',
    data:['lt-1/8', 'gt-1/8', 'dna']
  },
  16 => {
    column: 'leaf_shread',
    data:['absent', 'present']
  },
  17 => {
    column: 'leaf_malf',
    data:['absent', 'present']
  },
  18 => {
    column: 'leaf_mild',
    data:['absent', 'upper-surf', 'lower-surf']
  },
  19 => {
    column: 'stem',
    data:['norm', 'abnorm']
  },
  20 => {
    column: 'lodging',
    data:['yes', 'no']
  },
  21 => {
    column: 'stem_cankers',
    data:['absent', 'below-soil', 'above-soil', 'above-sec-nde']
  },
  22 => {
    column: 'canker_lesion',
    data:['dna', 'brown', 'dk-brown-blk', 'tan']
  },
  23 => {
    column: 'fruiting_bodies',
    data:['absent', 'present']
  },
  24 => {
    column: 'external_decay',
     data:['absent', 'firm-and-dry', 'watery']
   },
  25 => {
    column: 'mycelium',
    data:['absent', 'present']
  },
  26 => {
    column: 'int_discolor',
    data:['none', 'brown', 'black']
  },
  27 => {
    column: 'sclerotia',
    data:['absent', 'present']
  },
  28 => {
    column: 'fruit_pods',
    data:['norm', 'diseased', 'few-present', 'dna']
  },
  29 => {
    column: 'fruit_spots',
     data:['absent', 'colored', 'brown-w/blk-specks', 'distort', 'dna']
   },
  30 => {
    column: 'seed',
    data:['norm', 'abnorm']
  },
  31 => {
    column: 'mold_growth',
    data:['absent', 'present']
  },
  32 => {
    column: 'seed_discolor',
    data:['absent', 'present']
  },
  33 => {
    column: 'seed_size',
    data:['norm', 'lt-norm']
  },
  34 => {
    column: 'shriveling',
    data:['absent', 'present']
  },
  35 => {
    column: 'roots',
    data:['norm', 'rotted', 'galls-cysts']
  }
}

require 'csv'

soybean_large_data = CSV.read('lib/soybean_data/soybean-large.data')

soybean_large_data.each do |soybean|
  new_soybean = Bean.create
  soybean.each_with_index do |data, i|
    column = data_structure[i][:column]
    value = i == 0 ? data : data_structure[i][:data][data.to_i]
    new_soybean[column.to_sym] = value
  end

  new_soybean.save
end
