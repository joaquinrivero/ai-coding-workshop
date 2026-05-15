from flask import Flask, jsonify, request
from utils import validate_user_payload, sanitize_output
import uuid

app = Flask(__name__)

# In-memory store for demo purposes (replace with DB in production)
users = {}


@app.route("/users", methods=["GET"])
def list_users():
    """Return all users, sanitized (no passwords)."""
    return jsonify([sanitize_output(u) for u in users.values()])


@app.route("/users/<user_id>", methods=["GET"])
def get_user(user_id):
    """Return a single user by UUID."""
    user = users.get(user_id)
    if not user:
        return jsonify({"error": "User not found"}), 404
    return jsonify(sanitize_output(user))


@app.route("/users", methods=["POST"])
def create_user():
    """Create a new user. Expects JSON with name, email, password."""
    data = request.get_json()
    errors = validate_user_payload(data)
    if errors:
        return jsonify({"errors": errors}), 400

    user_id = str(uuid.uuid4())
    users[user_id] = {
        "id": user_id,
        "name": data["name"],
        "email": data["email"],
        "password": data["password"],  # NOTE: hash before storing in production
    }
    return jsonify(sanitize_output(users[user_id])), 201


@app.route("/users/<user_id>", methods=["DELETE"])
def delete_user(user_id):
    """Delete a user by UUID."""
    if user_id not in users:
        return jsonify({"error": "User not found"}), 404
    del users[user_id]
    return "", 204


if __name__ == "__main__":
    app.run(debug=True, port=5000)
