var expect = require("chai").expect;
var request = require("request");

it("Main page content", function(done) {
  request("http://colour_api:80/api/values", function(error, response, body) {
    expect(body).to.equal(
      '[{"id":1,"colourName":"Red"},{"id":2,"colourName":"Orange"},{"id":3,"colourName":"Yellow"},{"id":4,"colourName":"Green"},{"id":5,"colourName":"Blue"}]'
    );
    done();
    console.log(body);
  });
});
