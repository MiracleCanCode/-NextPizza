/*
  Warnings:

  - Changed the type of `category` on the `Pizza` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "Category" AS ENUM ('VEGAN', 'MEAT', 'WITH_MEAT');

-- AlterTable
ALTER TABLE "Pizza" DROP COLUMN "category",
ADD COLUMN     "category" "Category" NOT NULL;