/*
  Warnings:

  - You are about to drop the column `postStatus` on the `posts` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `posts` DROP COLUMN `postStatus`,
    ADD COLUMN `post_status` BOOLEAN NOT NULL DEFAULT false;
