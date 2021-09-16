from flask import render_template, Response, request
from datetime import datetime
from app.landing import landing_bp

@landing_bp.route('/write', methods=['POST'])
def write():
    no_spaces = request.get_data(as_text=True).replace("host=", "").replace("region=", "").replace(" ", ",").replace("=", ",")

    print(f'{datetime.now()},{request.args["db"]},{no_spaces}')
    return Response("", 200)