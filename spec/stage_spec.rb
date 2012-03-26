require 'spec_helper'

describe SinatraBootstrap::Stage do

  describe "#sinatra" do
    let(:sinatra) { described_class.start ['sinatra'] }

    it "outputs the instructions for starting sinatra" do
      Thor::Actions::CreateFile.stub(:new).and_return stub :invoke! => true
      stdout = capture(:stdout) { sinatra }
      stdout.should =~ /Simple startup:/
      stdout.should =~ /  bundle install/
      stdout.should =~ /  ruby \.\/main.rb/
    end

    it "creates a Gemfile" do
      in_tmpdir do
        capture(:stdout) { sinatra }
        File.exists?('Gemfile').should be_true
      end
    end

    it "Gemfile has only sinatra in it" do
      in_tmpdir do
        capture(:stdout) { sinatra }
        gemfile = File.read 'Gemfile'
        gemfile.should =~ /^gem 'sinatra', '~> 1.3'$/
        gemfile.lines.map do |line|
          line if line =~ /^gem/
        end.compact.length.should == 1
      end
    end

    it "copies main.rb" do
      in_tmpdir do
        capture(:stdout) { sinatra }
        File.exists?('main.rb').should be_true
      end
    end

    it "does not copy config.ru" do
      in_tmpdir do
        capture(:stdout) { sinatra }
        File.exists?('config.ru').should be_false
      end
    end

    context "with --rackup" do
      let(:sinatra) { described_class.start ['sinatra', '--rackup'] }

      it "copies config.ru" do
        in_tmpdir do
          capture(:stdout) { sinatra }
          File.exists?('config.ru').should be_true
        end
      end
    end

    context "with --no-rackup" do
      let(:sinatra) { described_class.start ['sinatra', '--no-rackup'] }

      it "does not copy config.ru" do
        in_tmpdir do
          capture(:stdout) { sinatra }
          File.exists?('config.ru').should be_false
        end
      end
    end
  end
end
