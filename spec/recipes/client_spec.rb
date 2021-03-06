require "spec_helper"

describe "postgresql::client" do
  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it "includes the default recipe" do
    expect(chef_run).to include_recipe("postgresql::default")
  end

  it "installs the `postgresql-client-9.6` package" do
    expect(chef_run).to install_package("postgresql-client-9.6")
  end
end
