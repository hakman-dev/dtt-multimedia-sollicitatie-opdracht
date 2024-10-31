<?php

namespace App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;

class OnlyAlphaNumericAndPlusMinAllowed implements ValidationRule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        if (!is_string($value) || !preg_match('/^[a-zA-Z0-9+\s-]+$/', $value)) {
            $fail('The :attribute must only contain letters, numbers, plus (+) and minus (-) signs.');
        }
    }
}
