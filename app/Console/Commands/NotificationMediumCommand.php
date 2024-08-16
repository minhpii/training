<?php

namespace App\Console\Commands;

use App\Repositories\Students\StudentInterface;
use Illuminate\Console\Command;

class NotificationMediumCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:notification-medium-command';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';
    protected $stuRepo;

    public function __construct(StudentInterface $stuRepo) 
    {
        parent::__construct();
        $this->stuRepo = $stuRepo;
    }
    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->info('Updating student average scores...');

        try {
            $this->stuRepo->updateAndNotificationMedium();
            $this->info('Student average scores updated successfully.');
        } catch (\Exception $e) {
            $this->error('Failed to update student average scores: ' . $e->getMessage());
        }

        return 0;
    }
}
