# frozen_string_literal: true

describe Deployder::CLI do
	# def cli(command)
	# 	`#{File.join(__dir__, '..', '..', 'exe', 'deployder')} #{command}`
	# end

	around :context do |context|
		Dir.chdir __dir__ do
			context.run
		end
	end

	describe 'setup' do
		let(:ssh) { double(Net::SSH::Connection::Session) }
		let(:host) { 'localhost' }
		let(:subcommands) { "setup #{host} basic" }
		let(:text) { 'Hello, world!' }
		let(:ssh_command) { "echo #{text}" }

		before do
			allow(Net::SSH).to receive(:start).with(host).and_yield(ssh)
			allow(STDOUT).to receive(:puts).with(ssh_command)
			allow(STDOUT).to receive(:puts).with(text)
		end

		after do
			described_class.run(__FILE__, ['setup', host, 'basic'])
		end

		subject { ssh }

		it { is_expected.to receive(:exec!).with(ssh_command).and_return(text) }
	end
end
