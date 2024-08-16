<?php

namespace App\Providers;

use App\Repositories\Courses\CourseInterface;
use App\Repositories\Courses\CourseRepository;
use App\Repositories\Departments\DepartmentInterface;
use App\Repositories\Departments\DepartmentRepository;
use App\Repositories\Students\StudentInterface;
use App\Repositories\Students\StudentRepository;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;
use Illuminate\Database\Eloquent\Model;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(
            DepartmentInterface::class,
            DepartmentRepository::class
        );

        $this->app->bind(
            CourseInterface::class,
            CourseRepository::class
        );

        $this->app->bind(
            StudentInterface::class,
            StudentRepository::class
        );
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Model::preventLazyLoading(! app()->isProduction());
        Paginator::useBootstrapFive();
    }
}
