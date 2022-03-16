@app.route('/flag/claim')
@get_session()
def flag_claim(user):
    if user['money'] < FLAG_PRICE:
        raise BadRequest('Not enough money')

    user['money'] -= FLAG_PRICE
    return jsonify({'status': 'success', 'message': FLAG})


@app.route('/pepero/claim')
@get_session()
def pepero_claim(user):
    if user['money'] < PEPERO_PRICE:
        raise BadRequest('Not enough money')

    user['money'] -= PEPERO_PRICE
    return jsonify({'status': 'success', 'message': 'lotteria~~~~!~!~!'})


@app.route('/coupon/submit')
@get_session()
def coupon_submit(user):
    coupon = request.headers.get('coupon', None)
    if coupon is None:
        raise BadRequest('Missing Coupon')

    try:
        coupon = jwt.decode(coupon, JWT_SECRET, algorithms='HS256')
    except:
        raise BadRequest('Invalid coupon')

    if coupon['expiration'] < int(time()):
        raise BadRequest('Coupon expired!')

    rate_limit_key = f'RATELIMIT:{user["uuid"]}'
    if r.setnx(rate_limit_key, 1):
        r.expire(rate_limit_key, timedelta(seconds=RATE_LIMIT_DELTA))
    else:
        raise BadRequest(f"Rate limit reached!, You can submit the coupon once every {RATE_LIMIT_DELTA} seconds.")
