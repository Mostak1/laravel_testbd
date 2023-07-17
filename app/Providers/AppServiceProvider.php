<?php

namespace App\Providers;

use Illuminate\Support\Facades\Blade;
use Nette\Utils\Html;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Blade::directive('anchor', function ($expression) {
        //     $args = explode(',', $expression);
        //     $url = trim($args[0]);
        //     $text = trim($args[1]);
        //     $class = isset($args[2]) ? trim($args[2]) : '';

        //     $anchor = Html::el('a')
        //         ->href($url)
        //         ->setText($text)
        //         ->class($class);

        //     return "<?php echo $anchor; ";
        // 
    }
}
