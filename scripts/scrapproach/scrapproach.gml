/// approach (from, to, amount)
/// Приближает "from" к "to" на расстояние "amount"

/// @param from
/// @param to
/// @param amount
function scrApproach(_from, _to, _amount){
 if (_from < _to) return min(_from + _amount, _to); 
    else return max(_from - _amount, _to);
}