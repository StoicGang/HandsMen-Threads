public class InventoryScheduler {
    public static void scheduleJob() {
        String cron = '0 0 0 * * ?'; // Runs at midnight daily
        System.schedule('Daily Inventory Sync', cron, new InventoryBatchJob());
    }
}
