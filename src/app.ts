import express from "express";
import path from "path";

const app = express();
const port = 4000;

// Serve static files from the 'public' directory
app.use(express.static(path.join(__dirname, "..", "public")));

// API route that returns demo JSON
app.get("/api/demo", (req, res) => {
  res.json({
    message: "This is a demo JSON response you bum",
    timestamp: new Date().toISOString(),
  });
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
