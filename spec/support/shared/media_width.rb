RSpec.shared_examples "wtr-media-width()" do
  context "wtr-media-width(from, 250px)" do
    it "outputs @media screen and (min-width: 250px)" do
      expect(".media-width-from").to be_contained_in("screen and (min-width: 250px)")
    end
  end

  context "wtr-media-width(until, 250px)" do
    it "outputs @media screen and (max-width: 250px)" do
      expect(".media-width-until").to be_contained_in("screen and (max-width: 250px)")
    end
  end

  context "wtr-media-width(equal, 250px)" do
    it "outputs @media screen and (width: 250px)" do
      expect(".media-width-equal").to be_contained_in("screen and (width: 250px)")
    end
  end

  context "wtr-media-width(between, 250px, 450px)" do
    it "outputs @media screen and (min-width: 250px) and (max-width: 450px)" do
      expect(".media-width-between").to be_contained_in("screen and (min-width: 250px) and (max-width: 450px)")
    end
  end

  context "wtr-media-width(from-excluding, 250px)" do
    it "outputs @media screen and (min-width: 251px)" do
      expect(".media-width-from-excluding").to be_contained_in("screen and (min-width: 251px)")
    end
  end

  context "wtr-media-width(until-excluding, 250px)" do
    it "outputs @media screen and (max-width: 249px)" do
      expect(".media-width-until-excluding").to be_contained_in("screen and (max-width: 249px)")
    end
  end
end
