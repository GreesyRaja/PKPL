-- DropForeignKey
ALTER TABLE `ratings` DROP FOREIGN KEY `ratings_productId_fkey`;

-- AlterTable
ALTER TABLE `messages` MODIFY `message` TEXT NOT NULL;

-- AlterTable
ALTER TABLE `reviews` MODIFY `email` VARCHAR(191) NULL,
    MODIFY `review` TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE `ratings` ADD CONSTRAINT `ratings_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
