const app = require("./app")
const supertest = require("supertest")
const request = supertest(app)

describe("/tree endpoint", () => {
    it("should return a response", async () => {
        const response = await request.get("/tree")
        expect(response.status).toBe(200)
        expect(response.text).toBe('{"Favorite Tree": "Sequoia"}');
    })
})