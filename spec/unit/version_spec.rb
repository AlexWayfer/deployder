# frozen_string_literal: true

describe Deployder::VERSION do
	it { is_expected.to be_instance_of String }
	it { is_expected.not_to be_empty }
end
