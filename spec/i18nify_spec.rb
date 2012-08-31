describe I18nify do
  before do
    @model = Class.new do
      include I18nify
      has_strings({
        :bork => "Bork: %{thing}!"
      })

      def bork(thing)
        tr(:bork, :thing => thing)
      end
    end.new
  end

  it "should look up strings" do
    @model.bork("a thing").should == "Bork: a thing!"
  end
end
