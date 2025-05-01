ALTER TABLE "accounts" DROP CONSTRAINT "accounts_user_id_users_id_fk";
--> statement-breakpoint
ALTER TABLE "sessions" DROP CONSTRAINT "sessions_user_id_users_id_fk";
--> statement-breakpoint
ALTER TABLE "accounts" ALTER COLUMN "id" TYPE uuid USING id::uuid;
--> statement-breakpoint
ALTER TABLE "accounts" ALTER COLUMN "user_id" TYPE uuid USING user_id::uuid;
--> statement-breakpoint
ALTER TABLE "sessions" ALTER COLUMN "id" TYPE uuid USING id::uuid;
--> statement-breakpoint
ALTER TABLE "sessions" ALTER COLUMN "user_id" TYPE uuid USING user_id::uuid;
--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "id" TYPE uuid USING id::uuid;
--> statement-breakpoint
ALTER TABLE "verifications" ALTER COLUMN "id" TYPE uuid USING id::uuid;
--> statement-breakpoint
ALTER TABLE "accounts" ADD CONSTRAINT "accounts_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE cascade ON UPDATE no action;
--> statement-breakpoint
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE cascade ON UPDATE no action;
