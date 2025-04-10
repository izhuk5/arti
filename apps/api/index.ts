import { db } from "~/drizzle";
import { users } from "~/drizzle/schemas/users";
import express from "express";

const app = express();

app.get("/", async (req, res) => {
  const result = await db.select().from(users);

  res.send(result);
});

app.listen(3005, () => {
  console.log("Server is running on port http://localhost:3005");
});
