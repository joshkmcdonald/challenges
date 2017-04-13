var Hamming = function() {};

Hamming.prototype.compute = function(string_1, string_2){
  var str_1 = string_1.split("");
  var str_2 = string_2.split("");
  var hamming_distance = 0

  if (str_1.length != str_2.length){
    throw new Error('DNA strands must be of equal length.');
  }else{
    for (i = 0; i < str_1.length; i++) {
      if (str_1[i] != str_2[i]){
        hamming_distance++;
      }
    } 
    return hamming_distance; 
  }

};

module.exports = Hamming;