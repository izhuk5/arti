import { defineConfig } from "drizzle-kit";
import { env } from "./env";

export default defineConfig({
  dialect: "postgresql",
  schema: "./drizzle/schemas/*.ts",
  out: "./drizzle/migrations",
  casing: "snake_case",
  dbCredentials: {
    url: env.DATABASE_URL,
  },
});
