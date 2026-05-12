/*
  Warnings:

  - Changed the type of `type` on the `bank_account` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "bank_account_type" AS ENUM ('CHECKING', 'INVESTMENT', 'CASH');

-- AlterTable
ALTER TABLE "bank_account" DROP COLUMN "type",
ADD COLUMN     "type" "bank_account_type" NOT NULL;

-- DropEnum
DROP TYPE "BankAccountType";
