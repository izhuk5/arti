import express from "express";
import postgres from "postgres";

const client = postgres(process.env.DATABASE_URL!);

const app = express();

app.get("/", async (req, res) => {
  const result = await client`SELECT * FROM auth.users`;

  res.send(result);
});

app.listen(3005, () => {
  console.log("Server is running on port http://localhost:3005");
});
