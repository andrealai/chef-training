describe 'An HTTP request on port 80' do
  subject { command ("curl localhost") }
  it 'should return Hello World!' do
    expect(subject.stdout).to match /Hello, world!/
  end
  
  it 'contains the IP address' do
    ip = command("hostname -I").stdout.strip
    expect(subject.stdout).to match /#{ip}/
  end
end   
