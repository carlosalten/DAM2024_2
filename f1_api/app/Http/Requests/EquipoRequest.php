<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EquipoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'nombre' => ['required','alpha'],
            'color' => ['required','size:6'],
        ];
    }

    public function messages():array
    {
        return [
            'nombre.required' => 'El nombre es obligatorio',
            'nombre.alpha' => 'Caracteres no válidos en nombre',
            'color.required' => 'El color es obligatorio',
            'color.size' => 'El color debe tener 6 dígitos',
        ];
    }  
}
