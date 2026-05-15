"""
utils.py — Validation and sanitization helpers for the User API.
"""

import re

EMAIL_REGEX = re.compile(r"^[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}$")


def validate_user_payload(data: dict) -> list[str]:
    """
    Validate a user creation payload.
    Returns a list of error messages (empty list = valid).
    """
    errors = []

    if not data:
        return ["Request body is required"]

    if not data.get("name") or not isinstance(data["name"], str):
        errors.append("name is required and must be a string")
    elif len(data["name"].strip()) < 2:
        errors.append("name must be at least 2 characters")

    if not data.get("email"):
        errors.append("email is required")
    elif not EMAIL_REGEX.match(data["email"]):
        errors.append("email format is invalid")

    if not data.get("password"):
        errors.append("password is required")
    elif len(data["password"]) < 8:
        errors.append("password must be at least 8 characters")

    return errors


def sanitize_output(user: dict) -> dict:
    """
    Remove sensitive fields from a user record before returning it in a response.
    Never expose passwords, even hashed ones.
    """
    return {k: v for k, v in user.items() if k != "password"}
