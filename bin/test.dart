import 'package:test/test.dart';
import 'main.dart';
void main(){
test('to chech evenOddTransform', (){
  expect(evenOddTransform([1,2,3], 2), [5,-2,7]);

});
test('maxzeros',(){
  expect(longestZero('0011100'),'00');
});
}