describe 'Login Message of the Day' do
  subject { file ('/etc/motd') }
  it 'contains the ip address!' do
    ip = command("hostname -I").stdout.strip
    expect(subject.content).to match /#{ip}/
  end
end