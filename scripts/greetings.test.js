const { sayHello } = require("./greetings");

test("Test greetings with a given name", () => {
  expect(sayHello("codesandtags")).toBe("Hello codesandtags!");
});
