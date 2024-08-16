<?php

namespace App\Enums;

enum TypePhoneEnum: string
{
    case Viettel = "viettel";
    case Mobie = "mobie";
    case Vina = "vina";

    public static function toArray(): array
    {
        return array_reduce(self::cases(), function ($case, $item) {
            $case[$item->value] = $item->name;
            return $case;
        }, []);
    }
}