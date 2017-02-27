def cli(command)
	`#{File.join(__dir__, '..', '..', 'exe', 'deployder')} #{command}`
end
