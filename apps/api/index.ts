import { toNodeHandler } from "better-auth/node";
import express from "express";
import cors from "cors";
import { auth } from "./auth";

const app = express();

app.use(
  cors({
    origin: "http://localhost:5173",
    credentials: true,
  })
);

app.all("/api/auth/*splat", (req, res) => {
  console.log("req", req);
  toNodeHandler(auth)(req, res);
});

app.listen(3005, () => {
  console.log("Server is running on port http://localhost:3005");
});
