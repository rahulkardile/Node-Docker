import express from "express"

const app = express();
const PORT = process.env.PORT || 3300;

app.get("/", (req, res, next) => {
    res.status(200).json({
        message: "Welcome to docker 🐳 container!",
        success: true
    })
})

app.listen(PORT, () => {
    console.log(`server is running at ${PORT} . . . `);
});