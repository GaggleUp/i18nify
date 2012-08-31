Usage
======

Include I18nify and call `has_strings` in your classes. Call `tr` to look up a translation:

    class Foo::Bar
      include I18nify

      has_strings({
        :thing => "A thing that has value %{value}",
        :error => "I am error."
      })

      def do_something
        if error_occurs
          raise tr(:error)
        else
          tr(:thing, :value => 5)
        end
      end
    end

You can then localize these strings in your config/locale/files, eg:

    config/locale/se.yml
    se:
      foo:
        bar:
          thing: "A theeng hes felooe-a %{value}"
          error: "I em irrur"
