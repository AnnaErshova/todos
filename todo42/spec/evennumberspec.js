describe( "firstEven", function() {
  it("should return the first even number in an array", function() {
    expect(firstEven([3, 5, 7, 10])).toBe(10);
  });      

  it("should return the first even number in an array", function() {
    expect(firstEven([4, 5, 7])).toBe(4);
  });

  it("should return the first even number in an array", function() {
    expect(firstEven([3, 5, 7, 16, 23, 43])).toBe(16);
  });
});