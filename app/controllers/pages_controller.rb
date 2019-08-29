class PagesController < ApplicationController

  def index
    @soybeans = Bean.all
    @data_structure = Bean.data_structure
    search = params['search']

    @classification   = @data_structure[0][:data]
    @date             = @data_structure[1][:data]
    @plant_stand      = @data_structure[2][:data]
    @precip           = @data_structure[3][:data]
    @temp             = @data_structure[4][:data]
    @hail             = @data_structure[5][:data]
    @crop_hist        = @data_structure[6][:data]
    @area_damaged     = @data_structure[7][:data]
    @severity         = @data_structure[8][:data]
    @seed_tmt         = @data_structure[9][:data]
    @germination      = @data_structure[10][:data]
    @plant_growth     = @data_structure[11][:data]
    @leaves           = @data_structure[12][:data]
    @leafspots_halo   = @data_structure[13][:data]
    @leafspots_marg   = @data_structure[14][:data]
    @leafspot_size    = @data_structure[15][:data]
    @leaf_shread      = @data_structure[16][:data]
    @leaf_malf        = @data_structure[17][:data]
    @leaf_mild        = @data_structure[18][:data]
    @stem             = @data_structure[19][:data]
    @lodging          = @data_structure[20][:data]
    @stem_cankers     = @data_structure[21][:data]
    @canker_lesion    = @data_structure[22][:data]
    @fruiting_bodies  = @data_structure[23][:data]
    @external_decay   = @data_structure[24][:data]
    @mycelium         = @data_structure[25][:data]
    @int_discolor     = @data_structure[26][:data]
    @sclerotia        = @data_structure[27][:data]
    @fruit_pods       = @data_structure[28][:data]
    @fruit_spots      = @data_structure[29][:data]
    @seed             = @data_structure[30][:data]
    @mold_growth      = @data_structure[31][:data]
    @seed_discolor    = @data_structure[32][:data]
    @seed_size        = @data_structure[33][:data]
    @shriveling       = @data_structure[34][:data]
    @roots            = @data_structure[35][:data]

    if search.present?
      selected_classification   = search['classification']
      selected_date             = search['date']
      selected_plant_stand      = search['plant_stand']
      selected_precip           = search['precip']
      selected_temp             = search['temp']
      selected_hail             = search['hail']
      selected_crop_hist        = search['crop_hist']
      selected_area_damaged     = search['area_damaged']
      selected_severity         = search['severity']
      selected_seed_tmt         = search['seed_tmt']
      selected_germination      = search['germination']
      selected_plant_growth     = search['plant_growth']
      selected_leaves           = search['leaves']
      selected_leafspots_halo   = search['leafspots_halo']
      selected_leafspots_marg   = search['leafspots_marg']
      selected_leafspot_size    = search['leafspot_size']
      selected_leaf_shread      = search['leaf_shread']
      selected_leaf_malf        = search['leaf_malf']
      selected_leaf_mild        = search['leaf_mild']
      selected_stem             = search['stem']
      selected_lodging          = search['lodging']
      selected_stem_cankers     = search['stem_cankers']
      selected_canker_lesion    = search['canker_lesion']
      selected_fruiting_bodies  = search['fruiting_bodies']
      selected_external_decay   = search['external_decay']
      selected_mycelium         = search['mycelium']
      selected_int_discolor     = search['int_discolor']
      selected_sclerotia        = search['sclerotia']
      selected_fruit_pods       = search['fruit_pods']
      selected_fruit_spots      = search['fruit_spots']
      selected_seed             = search['seed']
      selected_mold_growth      = search['mold_growth']
      selected_seed_discolor    = search['seed_discolor']
      selected_seed_size        = search['seed_size']
      selected_shriveling       = search['shriveling']
      selected_roots            = search['roots']

      @soybeans = Bean.where.not(
        classification:   selected_classification,
        date:             selected_date,
        plant_stand:      selected_plant_stand,
        precip:           selected_precip,
        temp:             selected_temp,
        hail:             selected_hail,
        crop_hist:        selected_crop_hist,
        area_damaged:     selected_area_damaged,
        severity:         selected_severity,
        seed_tmt:         selected_seed_tmt,
        germination:      selected_germination,
        plant_growth:     selected_plant_growth,
        leaves:           selected_leaves,
        leafspots_halo:   selected_leafspots_halo,
        leafspots_marg:   selected_leafspots_marg,
        leafspot_size:    selected_leafspot_size,
        leaf_shread:      selected_leaf_shread,
        leaf_malf:        selected_leaf_malf,
        leaf_mild:        selected_leaf_mild,
        stem:             selected_stem,
        lodging:          selected_lodging,
        stem_cankers:     selected_stem_cankers,
        canker_lesion:    selected_canker_lesion,
        fruiting_bodies:  selected_fruiting_bodies,
        external_decay:   selected_external_decay,
        mycelium:         selected_mycelium,
        int_discolor:     selected_int_discolor,
        sclerotia:        selected_sclerotia,
        fruit_pods:       selected_fruit_pods,
        fruit_spots:      selected_fruit_spots,
        seed:             selected_seed,
        mold_growth:      selected_mold_growth,
        seed_discolor:    selected_seed_discolor,
        seed_size:        selected_seed_size,
        shriveling:       selected_shriveling,
        roots:            selected_roots
        )
    end

  end

end
