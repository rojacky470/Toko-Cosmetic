<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SetCorsHeaders
{
    public function handle(Request $request, Closure $next): Response
    {
        // Untuk preflight request (OPTIONS), jawab langsung
        if ($request->getMethod() === 'OPTIONS') {
            $response = new Response('', 204);
        } else {
            $response = $next($request);
        }

        // Origin frontend kamu (Vite)
        $allowedOrigin = 'http://localhost:5173'; // sesuaikan kalau port frontend beda

        $response->headers->set('Access-Control-Allow-Origin', $allowedOrigin);
        $response->headers->set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        $response->headers->set('Access-Control-Allow-Headers', 'Content-Type, X-Requested-With, Authorization');
        $response->headers->set('Access-Control-Allow-Credentials', 'true');

        return $response;
    }
}
