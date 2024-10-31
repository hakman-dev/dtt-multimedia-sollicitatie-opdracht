<?php

use App\Models\Facility;
use App\Models\Tag;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('facility_tag', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Facility::class)->constrained()->cascadeOnDelete();
            $table->foreignIdFor(Tag::class)->constrained()->restrictOnDelete();
            $table->unique(['facility_id', 'tag_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('facility_tag');
    }
};
