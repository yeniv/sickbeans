class Bean < ApplicationRecord
  def self.data_structure
    data_structure = {
      0 => {
        column: 'classification',
        data: [
          'diaporthe-stem-canker',
          'charcoal-rot',
          'rhizoctonia-root-rot',
          'phytophthora-rot',
          'brown-stem-rot',
          'powdery-mildew',
          'downy-mildew',
          'brown-spot',
          'bacterial-blight',
          'bacterial-pustule',
          'purple-seed-stain',
          'anthracnose',
          'phyllosticta-leaf-spot',
          'alternarialeaf-spot',
          'frog-eye-leaf-spot',
          'diaporthe-pod-&-stem-blight',
          'cyst-nematode',
          '2-4-d-injury',
          'herbicide-injury'
        ]
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
  end

  def self.form_collection
    data_structure = Bean.data_structure
    form_collection = {
      classification:    data_structure[0][:data],
      date:              data_structure[1][:data],
      plant_stand:       data_structure[2][:data],
      precip:            data_structure[3][:data],
      temp:              data_structure[4][:data],
      hail:              data_structure[5][:data],
      crop_hist:         data_structure[6][:data],
      area_damaged:      data_structure[7][:data],
      severity:          data_structure[8][:data],
      seed_tmt:          data_structure[9][:data],
      germination:       data_structure[10][:data],
      plant_growth:      data_structure[11][:data],
      leaves:            data_structure[12][:data],
      leafspots_halo:    data_structure[13][:data],
      leafspots_marg:    data_structure[14][:data],
      leafspot_size:     data_structure[15][:data],
      leaf_shread:       data_structure[16][:data],
      leaf_malf:         data_structure[17][:data],
      leaf_mild:         data_structure[18][:data],
      stem:              data_structure[19][:data],
      lodging:           data_structure[20][:data],
      stem_cankers:      data_structure[21][:data],
      canker_lesion:     data_structure[22][:data],
      fruiting_bodies:   data_structure[23][:data],
      external_decay:    data_structure[24][:data],
      mycelium:          data_structure[25][:data],
      int_discolor:      data_structure[26][:data],
      sclerotia:         data_structure[27][:data],
      fruit_pods:        data_structure[28][:data],
      fruit_spots:       data_structure[29][:data],
      seed:              data_structure[30][:data],
      mold_growth:       data_structure[31][:data],
      seed_discolor:     data_structure[32][:data],
      seed_size:         data_structure[33][:data],
      shriveling:        data_structure[34][:data],
      roots:             data_structure[35][:data]
    }
  end

  def self.params_to_hash(params)
    search_params = {
      classification:    params['classification'],
      date:              params['date'],
      plant_stand:       params['plant_stand'],
      precip:            params['precip'],
      temp:              params['temp'],
      hail:              params['hail'],
      crop_hist:         params['crop_hist'],
      area_damaged:      params['area_damaged'],
      severity:          params['severity'],
      seed_tmt:          params['seed_tmt'],
      germination:       params['germination'],
      plant_growth:      params['plant_growth'],
      leaves:            params['leaves'],
      leafspots_halo:    params['leafspots_halo'],
      leafspots_marg:    params['leafspots_marg'],
      leafspot_size:     params['leafspot_size'],
      leaf_shread:       params['leaf_shread'],
      leaf_malf:         params['leaf_malf'],
      leaf_mild:         params['leaf_mild'],
      stem:              params['stem'],
      lodging:           params['lodging'],
      stem_cankers:      params['stem_cankers'],
      canker_lesion:     params['canker_lesion'],
      fruiting_bodies:   params['fruiting_bodies'],
      external_decay:    params['external_decay'],
      mycelium:          params['mycelium'],
      int_discolor:      params['int_discolor'],
      sclerotia:         params['sclerotia'],
      fruit_pods:        params['fruit_pods'],
      fruit_spots:       params['fruit_spots'],
      seed:              params['seed'],
      mold_growth:       params['mold_growth'],
      seed_discolor:     params['seed_discolor'],
      seed_size:         params['seed_size'],
      shriveling:        params['shriveling'],
      roots:             params['roots']
    }
  end
end
