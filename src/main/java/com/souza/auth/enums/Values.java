package com.souza.auth.enums;

import lombok.Getter;

@Getter
public enum Values {
    ADMIN(1L),
    BASIC(2L);

    long roleId;

    Values(long roleId) {
        this.roleId = roleId;
    }
}
