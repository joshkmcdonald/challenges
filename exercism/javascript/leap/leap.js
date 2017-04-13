var Year = function(year) {
  this.year = year;
};

Year.prototype.isLeap = function() {
  // if (this.year % 400 == 0){
  //   return true;
  // }else if ((this.year % 4 == 0) && (this.year % 100 != 0)){
  //   return true;
  // } else {
  //   return false;
  // }

  return (this.year % 400 == 0) || ((this.year % 4 == 0) && (this.year % 100 != 0));
};

module.exports = Year;
