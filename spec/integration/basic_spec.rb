describe Deployder do
	it 'should execute basic command' do
		result = cli 'setup localhost basic'
		result.should.equal "lol\n"
	end
end
