void using_strings() {
  group('Strings -', () {
    group('Declaring - ', () {
      test('single quotes', () {
        /*
         * Strings are another very important type that
         * is defined as a core type of the language.
         * We will find there are a number of ways to 
         * define strings. We'll start with the most
         * common way. It is preferred to define a string
         * between single quotes.
         * Fill in what str should equal below.
         */
        String str = 'This is a string.';
        expect(str, equals(_____));
      });
      test('double quotes', () {
        /*
         * Strings may also be defined with double quotes.
         * This is particularly useful if you need to use an
         * apostrophe in a sentence.
         */
        String str = "Isn't this easy?";
        expect(str, equals(_____));
      });
      test('escape sequences', () {
        /*
         * You can use \ to escape special characters in a
         * string. There is no difference between a single
         * quoted or double quoted string with escape sequences.
         * (some escape characters are \' \n \t)
         */
        String str = 'Single \'quoted\' or double\n';
        expect(_____, equals("Single 'quoted' or double\n"));
      });
      test('no "+" concatenation', () {
        /*
         * In Dart, its recommended that a line of code does not
         * surpass 80 characters. So how do we write a long string?
         * In many languages you can use a '+' to join strings
         * together. Not in Dart. It will throw an error (more
         * on Errors and Exceptions later). We also had to wrap
         * this in a function to properly see the error. We'll
         * cover this usage later as well. For not just concentrate
         * on the fact that two strings added together throws an
         * error.
         */
        var broken = () => 'two ' + 'strings';
        expect(_____, throwsNoSuchMethodError);
      });
      test('concatenation', () {
        /*
         * So in Dart, we can concatenate two strings together
         * in a unique way... With no special operator at all.
         * Since whitespace is not significant in Dart, if
         * the VM sees two strings without any separator or
         * semicolons, then they are automatically joined into
         * one.
         */
        var str = 'One '
            'and two.';
        expect(_____, equals('One and two.'));
      });
      test('triple quotes', () {
        /*
         * If you have a large, multi-line block of code you want
         * to store in a variable, you can use string concatenation
         * and new line escape (\n) to construct the string,
         * however it's often much more convenient to use triple
         * quotes. Triple quotes will make new lines and white
         * space significant.
         * Triple quotes may be done with single or double quotes.
         * Note that a new line after the first ''' is ignored however
         * one before the last ''' would be added to the string.
         */
        var str = '''
One and
_____
''';
        expect(str, equals('One and\ntwo\n'));
      });
      test('raw strings', () {
        /*
         * Finally, there is one additional type of string. This is
         * a raw string. There are times when you don't want to
         * escape anything or have to worry about special characters
         * being interpreted. Raw strings are prepended with an 'r'
         * Fill in _____ with the escaped version of str.
         */
        var str = r'\n is a new line\n';
        expect(str, '_____');
      });
    });
  });
}
/* Still to add: 
 * string interpolation. Immutable. Many many string
 * methods.
 */
