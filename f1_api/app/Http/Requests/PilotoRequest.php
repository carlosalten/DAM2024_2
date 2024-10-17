<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PilotoRequest extends FormRequest
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
            'apellido' => ['required','alpha'],
            'numero' => ['required','numeric','integer','between:1,99'],
            'puntos' => ['required','numeric','integer','between:0,1000'],
            'equipo_id' => ['required','numeric','integer','exists:equipos,id'],
        ];
    }

    public function messages():array
    {
        return [
            'nombre.required' => 'El nombre es obligatorio',
            'nombre.alpha' => 'Caracteres no válidos en nombre',
            'apellido.required' => 'El apellido es obligatorio',
            'apellido.alpha' => 'Caracteres no válidos',
            'numero.required' => 'El número es obligatorio',
            'numero.numeric' => 'El número debe ser numérico',
            'numero.integer' => 'El número debe ser entero',
            'numero.between' => 'El número debe estar entre 1 y 99',
            'puntos.required' => 'Los puntos son obligatorios',
            'puntos.numeric' => 'Los puntos deben ser numéricos',
            'puntos.integer' => 'Los puntos deben ser enteros',
            'puntos.between' => 'Los puntos deben estar entre 0 y 1000',
            'equipo_id.required' => 'El equipo es obligatorio',
            'equipo_id.numeric' => 'El equipo debe ser numérico',
            'equipo_id.integer' => 'El equipo debe ser entero',
            'equipo_id.exists' => 'El equipo no existe',
        ];
    }
}
