

void setup() {
  noLoop();
  readXml();
  readJson();
}
void readXml() {
  String xmlFileUrl = "http://aiweb.cs.washington.edu/research/projects/xmltk/xmldata/data/auctions/ebay.xml";
  XML xml = loadXML(xmlFileUrl);
  XML listingXml = xml.getChild("listing");
  
  XML sellerInfoXml = listingXml.getChild("seller_info");
  Seller seller = new Seller(sellerInfoXml);
  seller.printInfo();
  
  XML bidHistoryXml = listingXml.getChild("bid_history");
  BidHistory bidHistory = new BidHistory(bidHistoryXml);
  bidHistory.printInfo();
}

void readJson() {
  JSONArray colorCodes = loadJSONArray("data.json");
  
  for (int i = 0; i < colorCodes.size(); i++) {
    JSONObject colorCodeJson = colorCodes.getJSONObject(i);
    
    String name = colorCodeJson.getString("color");
    String code = colorCodeJson.getString("value");
    ColorCode colorCode = new ColorCode(name, code);
    println("Color " + (i + 1) + ":");
    println("  red: " + colorCode.getRed());
    println("  green: " + colorCode.getGreen());
    println("  blue: " + colorCode.getBlue());
  }
}
