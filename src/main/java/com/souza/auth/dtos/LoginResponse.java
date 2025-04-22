package com.souza.auth.dtos;

public record LoginResponse(String accessToken, Long expiresIn) {
}
