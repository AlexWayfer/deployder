describe 'Deployder::VERSION' do
	subject = Deployder::VERSION

	it 'should be not empty String' do
		subject.should.be.instance_of String
		subject.should.not.be.empty
	end
end
