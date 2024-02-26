/*
  Warnings:

  - You are about to drop the column `roomId` on the `image` table. All the data in the column will be lost.
  - Added the required column `room_id` to the `Image` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `image` DROP FOREIGN KEY `Image_roomId_fkey`;

-- AlterTable
ALTER TABLE `image` DROP COLUMN `roomId`,
    ADD COLUMN `room_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Image` ADD CONSTRAINT `Image_room_id_fkey` FOREIGN KEY (`room_id`) REFERENCES `rooms`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
