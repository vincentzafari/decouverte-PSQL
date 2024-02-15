BEGIN;

  
   DROP TABLE IF EXISTS "director";
   DROP TABLE IF EXISTS "movie";
   DROP TABLE IF EXISTS "genre";


   CREATE TABLE "director" (
    	"id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,  
    	"firstname" TEXT NOT NULL,
    	"lastname" TEXT NOT NULL
    );
    
    CREATE TABLE "movie" (
      "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,  
      "title" TEXT NOT NULL, 
      "year" INTEGER, 
      "excerpt" TEXT,
      "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
      "updated_at" TIMESTAMPTZ
    );

    CREATE TABLE "genre"(
        "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        "name" TEXT NOT NULL
    );

   -- ...

   COMMIT;