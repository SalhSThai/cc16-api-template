/*
  Warnings:

  - You are about to drop the column `disstrict` on the `condos` table. All the data in the column will be lost.
  - Added the required column `district` to the `condos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `condos` DROP COLUMN `disstrict`,
    ADD COLUMN `district` VARCHAR(191) NOT NULL;
